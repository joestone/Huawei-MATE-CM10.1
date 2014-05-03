#sensor unification for differ platform
obj-$(CONFIG_HUAWEI_SENSORS_INPUT_INFO)	+= sensor_info.o
obj-y   += arch_type/
obj-y	+= gyroscope/
obj-y	+= light/
obj-y	+= accelerometer/
obj-y	+= compass/
#obj-$(TOUCHSCREEN_RMI4_SYNAPTICS_GENERIC) += synaptics_generic.o
#obj-y   += touchscreen_Mate/
#ifeq ($(CONFIG_P2_TP_TK_CMD_FEATURE),y)
#obj-y   += touchscreen/
#else
#	ifeq ($(USE_TP_TK_MATE),true) 
	      obj-y   += touchscreen_Mate/   
#	else
#	      obj-y   += touchscreen_D2/ 
#	endif 

#endif 

obj-y   += touchkey/
obj-$(CONFIG_HUAWEI_KERNEL_FELICA_DEVICES) += felica/
obj-y   += irda/

obj-$(CONFIG_HUAWEI_TOUCH_INPUT_INFO)	+= touch_info.o

