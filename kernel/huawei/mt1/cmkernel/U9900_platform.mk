PRODUCT_NAME=U9900
PRODUCT_BRAND=Huawei
#add macro to enable command type lcd
export USE_LCD_CMI_OTM1282B := true

#add macro to enable command type TP&TK
export USE_TP_TK_MATE := true
#NOTICE! Do not config PRODUCT_DEVICE
export USE_NFC_DEVICE := true
export USE_NFC_DEVICE_U9900 := true
export USE_MULTITASK_FLOAT := true

#add MATE camera specifical settings
export USE_MATE_CAMERA_SETTINGS := true

export SPECIFY_IPPS_PARA_FILE := U9900

PRODUCT_PACKAGES +=HwFloatTasks

PRODUCT_LCD_DISPLAY=HD

PRODUCT_PROPERTY_OVERRIDES += \
	com.huawei.HwBeam=true
	
PRODUCT_PROPERTY_OVERRIDES += \
	com.huawei.HwBeam.SoftAP=true	

DEVICE_PACKAGE_OVERLAYS := device/hisi/k3v2oem1/product_spec/overlay/$(PRODUCT_NAME) $(DEVICE_PACKAGE_OVERLAYS)
