#!/system/bin/sh
#set -x verbose #echo on
#unset verbose

# input commands
API_1_PARAM_READ=read
API_1_PARAM_WRITE=write
API_CMD_SWITCH_CONFIGURATION=switch_cmd
API_CMD_CW_SILENCE=cw_silence
# Command API index
API_PLT_STOP_TX=16
API_PLT_CW_SILENCE=23
API_PLT_SWITCH_CONFIGURATION=31

_g_MacPhyApi_MailBox=0x22000
_g_MacPhyApi_MailBox_status_offset=0x34
_g_MacPhyApi_Mailbox_handleState_offset=0x38
_g_MacPhyApi_MailBox_DataOffset=0x4c
_g_MacPhyApi_MailBox_GetSetFlag=0x170
_g_MacPhyApi_MailBox_SwitchTable=0x174

API_1_REG=0x2C100
API_handling_state_addr=0x22034

get_hex_str()
{
    if [ "$1" -eq 1 ]; then 
		echo "1"
	elif [ "$1" -eq 2 ]; then 
		echo "2"
	elif [ "$1" -eq 3 ]; then 
		echo "3"
	elif [ "$1" -eq 4 ]; then 
		echo "4"
	elif [ "$1" -eq 5 ]; then 
		echo "5"
	elif [ "$1" -eq 6 ]; then 
		echo "6"
	elif [ "$1" -eq 7 ]; then 
		echo "7"
	elif [ "$1" -eq 8 ]; then 
		echo "8"
	elif [ "$1" -eq 9 ]; then 
		echo "9"
	elif [ "$1" -eq 10 ]; then 
		echo "a"
	elif [ "$1" -eq 11 ]; then 
		echo "b"
	elif [ "$1" -eq 12 ]; then 
		echo "c"
	elif [ "$1" -eq 13 ]; then 
		echo "d"
	elif [ "$1" -eq 14 ]; then 
		echo "e"
	elif [ "$1" -eq 15 ]; then 
		echo "f"
	elif [ "$1" -eq 0 ]; then 
		echo "0"
	fi	
}

printf_hex()
{
r=$(( $1 % 16 ))
n=$(( $1 / 16 ))

while [ $n -gt 0 ]
do
	hex_str=$(get_hex_str  $r) 
	final=$hex_str$final

	r=$(( $n % 16 ))
	n=$(( $n / 16 ))
done

	hex_str=$(get_hex_str  $r) 
	final=$hex_str$final
	
echo  "0x$final"
}

write_reg() {
	calibrator wlan0 wl18xx_plt phy_reg_write $1 $2
}

read_reg() {
	calibrator wlan0 wl18xx_plt phy_reg_read $1
}

usage_API_TransmitSilence() {
	echo ""
	echo " USAGE: cw_silence [type] [board type] [BW] "
	echo " type         - read or write"
	echo " board type   - siso mimo"
	echo " BW           - 5G or 2.4G"
}

usage_API_Set_Switch_Config() {
	echo ""
	echo " USAGE: switch_cmd [type] [parameters - only for 'set' type]"
	echo " type         - set or get"
	echo " parameters   - switch control table value. This is valid for the 'set' command"
}
usage() {
	echo ""
	echo "USAGE: phy_cmd COMMAND [OPTIONS] "
	echo ""
	usage_API_TransmitSilence
	usage_API_Set_Switch_Config
}
trigger_API_int() {
	local API_id=$1
	local handleStateAddress
	local statusAddress
	echo Making the API handling status "pending"
	write_reg $API_handling_state_addr 0x1
	read_reg $API_handling_state_addr
	echo  Trigerring command  
	value_to_write_to_api_reg=$(printf_hex $(($API_id*256+3)))
	calibrator wlan0 wl18xx_plt phy_reg_write $API_1_REG $value_to_write_to_api_reg
	echo Reading status command
	statusAddress=$(printf_hex $((_g_MacPhyApi_MailBox + _g_MacPhyApi_MailBox_status_offset)))
	read_reg $statusAddress
}
API_TransmitSilence() {	
	local toneMode_offset=0x138	
	local TX_CONFIG_SOURCE_CONTROL=0x34764
	local TX1_LO_LEAK_CALIB=0x34424
	local TX2_LO_LEAK_CALIB=0x3442C
	local cmd_reg
	
	echo Configuring LO  source 1 and 2 to OCP registers
	write_reg $TX_CONFIG_SOURCE_CONTROL 0xa
	
	echo Writing I and Q
	write_reg $TX1_LO_LEAK_CALIB 0x01000100
	write_reg $TX2_LO_LEAK_CALIB 0x01000100
	
	echo Writing command parameters
	cmd_reg=$(printf_hex $((_g_MacPhyApi_MailBox + toneMode_offset)))
	write_reg $cmd_reg 0x0		
	trigger_API_int $API_PLT_CW_SILENCE
}

API_Set_Switch_Config() {
	local cmd_type=$1	
	local cmd_param=$2
	local cmd_reg		
	echo Writing command parameters

	cmd_reg=$(printf_hex $((_g_MacPhyApi_MailBox + _g_MacPhyApi_MailBox_GetSetFlag)))
	if [ "$1" == "set" ]; then 
		write_reg $cmd_reg 0x1

		cmd_reg=$(printf_hex $((_g_MacPhyApi_MailBox + _g_MacPhyApi_MailBox_SwitchTable)))		
		write_reg $cmd_reg $2
		trigger_API_int $API_PLT_SWITCH_CONFIGURATION
	elif [ "$1" == "get" ]; then 
		write_reg $cmd_reg 0x0

		cmd_reg=$(printf_hex $((_g_MacPhyApi_MailBox + _g_MacPhyApi_MailBox_SwitchTable)))
		trigger_API_int $API_PLT_SWITCH_CONFIGURATION
		read_reg $cmd_reg	
	else
		usage_API_Set_Switch_Config
	fi	
}

if [ "$1" = "$API_CMD_SWITCH_CONFIGURATION" ]; then 
	echo "Received $API_CMD_SWITCH_CONFIGURATION"
	API_Set_Switch_Config $2 $3
elif [ "$1" = "$API_CMD_CW_SILENCE" ]; then 
	echo "Received $API_CMD_CW_SILENCE"
	API_TransmitSilence
elif [ "$1" = "$API_1_PARAM_READ" ]; then 
	echo "Found $API_1_PARAM_READ"
elif [ "$1" = "$API_1_PARAM_WRITE" ]; then 
	echo "Nothing found"
else
	usage	
fi
