$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/huawei/hwmt1_u06/hwp6_u06-vendor.mk)

#LOCAL_PATH := device/huawei/hwmt1_u06

DEVICE_PACKAGE_OVERLAYS += device/huawei/common/overlay

# Files needed for recovery image

PRODUCT_COPY_FILES += \
    device/huawei/common/recovery/ueventd.k3v2oem1.rc:recovery/root/ueventd.k3v2oem1.rc \
    device/huawei/common/recovery/ueventd.rc:recovery/root/ueventd.rc \
    device/huawei/common/recovery/init.rc:recovery/root/init.rc \
    device/huawei/common/recovery/file_contexts:recovery/root/file_contexts \
    device/huawei/common/recovery/property_contexts:recovery/root/property_contexts \
    device/huawei/common/recovery/seapp_contexts:recovery/root/seapp_contexts \
    device/huawei/common/recovery/sepolicy:recovery/root/sepolicy \
    device/huawei/common/recovery/res/images/720x1280/batt_level_scale.png:recovery/root/res/images/720x1280/batt_level_scale.png \
    device/huawei/common/recovery/res/images/720x1280/batt_level_top.png:recovery/root/res/images/720x1280/batt_level_top.png \
    device/huawei/common/recovery/res/images/720x1280/bg.png:recovery/root/res/images/720x1280/bg.png \
    device/huawei/common/recovery/res/images/720x1280/empty_charge.png:recovery/root/res/images/720x1280/empty_charge.png \
    device/huawei/common/recovery/res/images/720x1280/err_charge.png:recovery/root/res/images/720x1280/err_charge.png \
    device/huawei/common/recovery/res/images/720x1280/full_charge.png:recovery/root/res/images/720x1280/full_charge.png \
    device/huawei/common/recovery/res/images/720x1280/number_0.png:recovery/root/res/images/720x1280/number_0.png \
    device/huawei/common/recovery/res/images/720x1280/number_1.png:recovery/root/res/images/720x1280/number_1.png \
    device/huawei/common/recovery/res/images/720x1280/number_2.png:recovery/root/res/images/720x1280/number_2.png \
    device/huawei/common/recovery/res/images/720x1280/number_3.png:recovery/root/res/images/720x1280/number_3.png \
    device/huawei/common/recovery/res/images/720x1280/number_4.png:recovery/root/res/images/720x1280/number_4.png \
    device/huawei/common/recovery/res/images/720x1280/number_5.png:recovery/root/res/images/720x1280/number_5.png \
    device/huawei/common/recovery/res/images/720x1280/number_6.png:recovery/root/res/images/720x1280/number_6.png \
    device/huawei/common/recovery/res/images/720x1280/number_7.png:recovery/root/res/images/720x1280/number_7.png \
    device/huawei/common/recovery/res/images/720x1280/number_8.png:recovery/root/res/images/720x1280/number_8.png \
    device/huawei/common/recovery/res/images/720x1280/number_9.png:recovery/root/res/images/720x1280/number_9.png \
    device/huawei/common/recovery/res/images/720x1280/percent_5.png:recovery/root/res/images/720x1280/percent_5.png \
    device/huawei/common/recovery/res/images/720x1280/percent_10.png:recovery/root/res/images/720x1280/percent_10.png \
    device/huawei/common/recovery/res/images/720x1280/percent_sign.png:recovery/root/res/images/720x1280/percent_sign.png \
    device/huawei/common/recovery/sbin/6085downloader:recovery/root/sbin/6085downloader \
    device/huawei/common/recovery/sbin/mtk_update:recovery/root/sbin/mtk_update \
    device/huawei/common/recovery/sbin/updatemodem:recovery/root/sbin/updatemodem \
    device/huawei/common/recovery/system/bin/linker:recovery/root/system/bin/linker \
    device/huawei/common/recovery/system/lib/libc.so:recovery/root/system/lib/libc.so \
    device/huawei/common/recovery/system/lib/libdl.so:recovery/root/system/lib/libdl.so \
    device/huawei/common/recovery/system/lib/libm.so:recovery/root/system/lib/libm.so \
    device/huawei/common/recovery/system/lib/libstdc++.so:recovery/root/system/lib/libstdc++.so \
    device/huawei/common/recovery/system/lib/libz.so:recovery/root/system/lib/libz.so \
#    device/huawei/common/recovery/fstab.k3v2oem1:recovery/root/fstab.k3v2oem1 \
#    device/huawei/common/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
#    device/huawei/common/recovery/twrp.fstab:recovery/root/etc/twrp.fstab



PRODUCT_COPY_FILES += \
    device/huawei/common/root/ueventd.k3v2oem1.rc:root/ueventd.k3v2oem1.rc \
    device/huawei/common/root/fstab.k3v2oem1:root/fstab.k3v2oem1 \
    device/huawei/common/root/ueventd.rc:root/ueventd.rc \
    device/huawei/common/root/init.rc:root/init.rc \
    device/huawei/common/root/init.k3v2oem1.rc:root/init.k3v2oem1.rc \
    device/huawei/common/root/init.k3v2oem1.usb.rc:root/init.k3v2oem1.usb.rc \
    device/huawei/common/root/init.k3v2oem1.cpu.rc:root/init.k3v2oem1.cpu.rc

PRODUCT_COPY_FILES += \
    device/huawei/common/prebuilt/etc/gnss/config/cacerts.bks:system/etc/gnss/config/cacerts.bks \
    device/huawei/common/prebuilt/etc/gnss/config/Connect_Config.txt:system/etc/gnss/config/Connect_Config.txt \
    device/huawei/common/prebuilt/etc/gnss/config/DM_SUPL_Config.xml:system/etc/gnss/config/DM_SUPL_Config.xml \
    device/huawei/common/prebuilt/etc/gnss/config/dproxy.conf:system/etc/gnss/config/dproxy.conf \
    device/huawei/common/prebuilt/etc/gnss/config/SUPLConfigParams.xml:system/etc/gnss/config/SUPLConfigParams.xml \
    device/huawei/common/prebuilt/etc/gnss/patch/dproxy.patch:system/etc/gnss/patch/dproxy.patch \
    device/huawei/common/prebuilt/etc/gnss/RXN/license.key:system/etc/gnss/RXN/license.key \
    device/huawei/common/prebuilt/etc/gnss/RXN/MSLConfig.txt:system/etc/gnss/RXN/MSLConfig.txt \
    device/huawei/common/prebuilt/etc/gnss/RXN/security.key:system/etc/gnss/RXN/security.key

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_LOCALES += en_US

PRODUCT_COPY_FILES += \
    device/huawei/common/prebuilt/etc/audio/audience/audience_C9800D_ce_cs.bin:system/etc/audio/audience/audience_C9800D_ce_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_C9800D_default_cs.bin:system/etc/audio/audience/audience_C9800D_default_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_CEDGE_ce_cs.bin:system/etc/audio/audience/audience_CEDGE_ce_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_CEDGE_default_cs.bin:system/etc/audio/audience/audience_CEDGE_default_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_default_cs.bin:system/etc/audio/audience/audience_default_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_k3v2oem1_default_cs.bin:system/etc/audio/audience/audience_k3v2oem1_default_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_T9800L_ce_cs.bin:system/etc/audio/audience/audience_T9800L_ce_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_T9800L_default_cs.bin:system/etc/audio/audience/audience_T9800L_default_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_T9900_ce_cs.bin:system/etc/audio/audience/audience_T9900_ce_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_T9900_default_cs.bin:system/etc/audio/audience/audience_T9900_default_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_U9700L_ce_cs.bin:system/etc/audio/audience/audience_U9700L_ce_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_U9700L_default_cs.bin:system/etc/audio/audience/audience_U9700L_default_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_U9701G_ce_cs.bin:system/etc/audio/audience/audience_U9701G_ce_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_U9701G_default_cs.bin:system/etc/audio/audience/audience_U9701G_default_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_U9701L_ce_cs.bin:system/etc/audio/audience/audience_U9701L_ce_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_U9701L_default_cs.bin:system/etc/audio/audience/audience_U9701L_default_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_U9800D_ce_cs.bin:system/etc/audio/audience/audience_U9800D_ce_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_U9800D_default_cs.bin:system/etc/audio/audience/audience_U9800D_default_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_U9900_ce_cs.bin:system/etc/audio/audience/audience_U9900_ce_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_U9900_default_cs.bin:system/etc/audio/audience/audience_U9900_default_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_U9900L_ce_cs.bin:system/etc/audio/audience/audience_U9900L_ce_cs.bin \
    device/huawei/common/prebuilt/etc/audio/audience/audience_U9900L_default_cs.bin:system/etc/audio/audience/audience_U9900L_default_cs.bin \
    device/huawei/common/prebuilt/etc/audio/codec/asound_C9800D_ce_ADL.dat:system/etc/audio/codec/asound_C9800D_ce_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_C9800D_default_ADL.dat:system/etc/audio/codec/asound_C9800D_default_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_CEDGE_ce_ADL.dat:system/etc/audio/codec/asound_CEDGE_ce_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_CEDGE_default_ADL.dat:system/etc/audio/codec/asound_CEDGE_default_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_default_ADL.dat:system/etc/audio/codec/asound_default_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_k3v2oem1_default_ADL.dat:system/etc/audio/codec/asound_k3v2oem1_default_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_T9800L_cs_ADL.dat:system/etc/audio/codec/asound_T9800L_cs_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_T9800L_default_ADL.dat:system/etc/audio/codec/asound_T9800L_default_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_T9900_ce_ADL.dat:system/etc/audio/codec/asound_T9900_ce_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_T9900_default_ADL.dat:system/etc/audio/codec/asound_T9900_default_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_TEDGE_ce_NDL.dat:system/etc/audio/codec/asound_TEDGE_ce_NDL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_TEDGE_default_NDL.dat:system/etc/audio/codec/asound_TEDGE_default_NDL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_U9700L_ce_ADL.dat:system/etc/audio/codec/asound_U9700L_ce_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_U9700L_default_ADL.dat:system/etc/audio/codec/asound_U9700L_default_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_U9701G_ce_NSL.dat:system/etc/audio/codec/asound_U9701G_ce_NSL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_U9701G_default_NSL.dat:system/etc/audio/codec/asound_U9701G_default_NSL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_U9701L_ce_ASL.dat:system/etc/audio/codec/asound_U9701L_ce_ASL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_U9701L_default_ADL.dat:system/etc/audio/codec/asound_U9701L_default_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_U9701L_default_ASL.dat:system/etc/audio/codec/asound_U9701L_default_ASL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_U9800D_ce_ADL.dat:system/etc/audio/codec/asound_U9800D_ce_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_U9800D_default_ADL.dat:system/etc/audio/codec/asound_U9800D_default_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_U9900_ce_NDL.dat:system/etc/audio/codec/asound_U9900_ce_NDL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_U9900_default_NDL.dat:system/etc/audio/codec/asound_U9900_default_NDL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_U9900L_ce_ADL.dat:system/etc/audio/codec/asound_U9900L_ce_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_U9900L_default_ADL.dat:system/etc/audio/codec/asound_U9900L_default_ADL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_UEDGE_ce_NDL.dat:system/etc/audio/codec/asound_UEDGE_ce_NDL.dat \
    device/huawei/common/prebuilt/etc/audio/codec/asound_UEDGE_default_NDL.dat:system/etc/audio/codec/asound_UEDGE_default_NDL.dat \
    device/huawei/common/prebuilt/etc/audio/fir_filter/fir_coef_capture.txt:system/etc/audio/fir_filter/fir_coef_capture.txt \
    device/huawei/common/prebuilt/etc/audio/fir_filter/fir_coef_capture_C9800D_default.txt:system/etc/audio/fir_filter/fir_coef_capture_C9800D_default.txt \
    device/huawei/common/prebuilt/etc/audio/fir_filter/fir_coef_capture_CEDGE_default.txt:system/etc/audio/fir_filter/fir_coef_capture_CEDGE_default.txt \
    device/huawei/common/prebuilt/etc/audio/fir_filter/fir_coef_capture_T9800L_default.txt:system/etc/audio/fir_filter/fir_coef_capture_T9800L_default.txt \
    device/huawei/common/prebuilt/etc/audio/fir_filter/fir_coef_capture_TEDGE_default.txt:system/etc/audio/fir_filter/fir_coef_capture_TEDGE_default.txt \
    device/huawei/common/prebuilt/etc/audio/fir_filter/fir_coef_capture_U9701G_default.txt:system/etc/audio/fir_filter/fir_coef_capture_U9701G_default.txt \
    device/huawei/common/prebuilt/etc/audio/fir_filter/fir_coef_capture_U9800D_default.txt:system/etc/audio/fir_filter/fir_coef_capture_U9800D_default.txt \
    device/huawei/common/prebuilt/etc/audio/fir_filter/fir_coef_capture_UEDGE_default.txt:system/etc/audio/fir_filter/fir_coef_capture_UEDGE_default.txt \
    device/huawei/common/prebuilt/etc/audio/fir_filter/fir_coef_speaker.txt:system/etc/audio/fir_filter/fir_coef_speaker.txt \
    device/huawei/common/prebuilt/etc/audio/fir_filter/fir_coef_speaker_C9800D_default.txt:system/etc/audio/fir_filter/fir_coef_speaker_C9800D_default.txt \
    device/huawei/common/prebuilt/etc/audio/fir_filter/fir_coef_speaker_T9800L_default.txt:system/etc/audio/fir_filter/fir_coef_speaker_T9800L_default.txt \
    device/huawei/common/prebuilt/etc/audio/fir_filter/fir_coef_speaker_U9701G_default.txt:system/etc/audio/fir_filter/fir_coef_speaker_U9701G_default.txt \
    device/huawei/common/prebuilt/etc/audio/fir_filter/fir_coef_speaker_U9701L_default.txt:system/etc/audio/fir_filter/fir_coef_speaker_U9701L_default.txt \
    device/huawei/common/prebuilt/etc/audio/stereo_enhancement/stereo_C9800D.xml:system/etc/audio/stereo_enhancement/stereo_C9800D.xml \
    device/huawei/common/prebuilt/etc/audio/stereo_enhancement/stereo_CEDGE.xml:system/etc/audio/stereo_enhancement/stereo_CEDGE.xml \
    device/huawei/common/prebuilt/etc/audio/stereo_enhancement/stereo_T9800L.xml:system/etc/audio/stereo_enhancement/stereo_T9800L.xml \
    device/huawei/common/prebuilt/etc/audio/stereo_enhancement/stereo_T9900.xml:system/etc/audio/stereo_enhancement/stereo_T9900.xml \
    device/huawei/common/prebuilt/etc/audio/stereo_enhancement/stereo_TEDGE.xml:system/etc/audio/stereo_enhancement/stereo_TEDGE.xml \
    device/huawei/common/prebuilt/etc/audio/stereo_enhancement/stereo_U9700L.xml:system/etc/audio/stereo_enhancement/stereo_U9700L.xml \
    device/huawei/common/prebuilt/etc/audio/stereo_enhancement/stereo_U9701G.xml:system/etc/audio/stereo_enhancement/stereo_U9701G.xml \
    device/huawei/common/prebuilt/etc/audio/stereo_enhancement/stereo_U9701L.xml:system/etc/audio/stereo_enhancement/stereo_U9701L.xml \
    device/huawei/common/prebuilt/etc/audio/stereo_enhancement/stereo_U9800D.xml:system/etc/audio/stereo_enhancement/stereo_U9800D.xml \
    device/huawei/common/prebuilt/etc/audio/stereo_enhancement/stereo_U9900.xml:system/etc/audio/stereo_enhancement/stereo_U9900.xml \
    device/huawei/common/prebuilt/etc/audio/stereo_enhancement/stereo_U9900L.xml:system/etc/audio/stereo_enhancement/stereo_U9900L.xml \
    device/huawei/common/prebuilt/etc/audio/stereo_enhancement/stereo_UEDGE.xml:system/etc/audio/stereo_enhancement/stereo_UEDGE.xml \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/ce/fm/fm.eq:system/etc/audio/tfa9887/CEDGE/ce/fm/fm.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/ce/fm/fm.preset:system/etc/audio/tfa9887/CEDGE/ce/fm/fm.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/ce/incall_nb/incall_nb.eq:system/etc/audio/tfa9887/CEDGE/ce/incall_nb/incall_nb.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/ce/incall_nb/incall_nb.preset:system/etc/audio/tfa9887/CEDGE/ce/incall_nb/incall_nb.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/ce/incall_wb/incall_wb.eq:system/etc/audio/tfa9887/CEDGE/ce/incall_wb/incall_wb.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/ce/incall_wb/incall_wb.preset:system/etc/audio/tfa9887/CEDGE/ce/incall_wb/incall_wb.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/ce/music/music.eq:system/etc/audio/tfa9887/CEDGE/ce/music/music.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/ce/music/music.preset:system/etc/audio/tfa9887/CEDGE/ce/music/music.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/ce/ringtone/ringtone.eq:system/etc/audio/tfa9887/CEDGE/ce/ringtone/ringtone.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/ce/ringtone/ringtone.preset:system/etc/audio/tfa9887/CEDGE/ce/ringtone/ringtone.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/ce/ringtone_hs_spk/ringtone_hs_spk.eq:system/etc/audio/tfa9887/CEDGE/ce/ringtone_hs_spk/ringtone_hs_spk.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/ce/ringtone_hs_spk/ringtone_hs_spk.preset:system/etc/audio/tfa9887/CEDGE/ce/ringtone_hs_spk/ringtone_hs_spk.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/ce/voip/voip.eq:system/etc/audio/tfa9887/CEDGE/ce/voip/voip.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/ce/voip/voip.preset:system/etc/audio/tfa9887/CEDGE/ce/voip/voip.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/normal/fm/fm.eq:system/etc/audio/tfa9887/CEDGE/normal/fm/fm.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/normal/fm/fm.preset:system/etc/audio/tfa9887/CEDGE/normal/fm/fm.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/normal/incall_nb/incall_nb.eq:system/etc/audio/tfa9887/CEDGE/normal/incall_nb/incall_nb.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/normal/incall_nb/incall_nb.preset:system/etc/audio/tfa9887/CEDGE/normal/incall_nb/incall_nb.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/normal/incall_wb/incall_wb.eq:system/etc/audio/tfa9887/CEDGE/normal/incall_wb/incall_wb.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/normal/incall_wb/incall_wb.preset:system/etc/audio/tfa9887/CEDGE/normal/incall_wb/incall_wb.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/normal/music/music.eq:system/etc/audio/tfa9887/CEDGE/normal/music/music.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/normal/music/music.preset:system/etc/audio/tfa9887/CEDGE/normal/music/music.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/normal/ringtone/ringtone.eq:system/etc/audio/tfa9887/CEDGE/normal/ringtone/ringtone.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/normal/ringtone/ringtone.preset:system/etc/audio/tfa9887/CEDGE/normal/ringtone/ringtone.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/normal/ringtone_hs_spk/ringtone_hs_spk.eq:system/etc/audio/tfa9887/CEDGE/normal/ringtone_hs_spk/ringtone_hs_spk.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/normal/ringtone_hs_spk/ringtone_hs_spk.preset:system/etc/audio/tfa9887/CEDGE/normal/ringtone_hs_spk/ringtone_hs_spk.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/normal/voip/voip.eq:system/etc/audio/tfa9887/CEDGE/normal/voip/voip.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/normal/voip/voip.preset:system/etc/audio/tfa9887/CEDGE/normal/voip/voip.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/CEDGE/speaker_model.speaker:system/etc/audio/tfa9887/CEDGE/speaker_model.speaker \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/ce/fm/fm.eq:system/etc/audio/tfa9887/default/ce/fm/fm.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/ce/fm/fm.preset:system/etc/audio/tfa9887/default/ce/fm/fm.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/ce/incall_nb/incall_nb.eq:system/etc/audio/tfa9887/default/ce/incall_nb/incall_nb.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/ce/incall_nb/incall_nb.preset:system/etc/audio/tfa9887/default/ce/incall_nb/incall_nb.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/ce/incall_wb/incall_wb.eq:system/etc/audio/tfa9887/default/ce/incall_wb/incall_wb.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/ce/incall_wb/incall_wb.preset:system/etc/audio/tfa9887/default/ce/incall_wb/incall_wb.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/ce/music/music.eq:system/etc/audio/tfa9887/default/ce/music/music.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/ce/music/music.preset:system/etc/audio/tfa9887/default/ce/music/music.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/ce/ringtone/ringtone.eq:system/etc/audio/tfa9887/default/ce/ringtone/ringtone.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/ce/ringtone/ringtone.preset:system/etc/audio/tfa9887/default/ce/ringtone/ringtone.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/ce/ringtone_hs_spk/ringtone_hs_spk.eq:system/etc/audio/tfa9887/default/ce/ringtone_hs_spk/ringtone_hs_spk.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/ce/ringtone_hs_spk/ringtone_hs_spk.preset:system/etc/audio/tfa9887/default/ce/ringtone_hs_spk/ringtone_hs_spk.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/ce/voip/voip.eq:system/etc/audio/tfa9887/default/ce/voip/voip.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/ce/voip/voip.preset:system/etc/audio/tfa9887/default/ce/voip/voip.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/normal/fm/fm.eq:system/etc/audio/tfa9887/default/normal/fm/fm.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/normal/fm/fm.preset:system/etc/audio/tfa9887/default/normal/fm/fm.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/normal/incall_nb/incall_nb.eq:system/etc/audio/tfa9887/default/normal/incall_nb/incall_nb.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/normal/incall_nb/incall_nb.preset:system/etc/audio/tfa9887/default/normal/incall_nb/incall_nb.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/normal/incall_wb/incall_wb.eq:system/etc/audio/tfa9887/default/normal/incall_wb/incall_wb.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/normal/incall_wb/incall_wb.preset:system/etc/audio/tfa9887/default/normal/incall_wb/incall_wb.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/normal/music/music.eq:system/etc/audio/tfa9887/default/normal/music/music.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/normal/music/music.preset:system/etc/audio/tfa9887/default/normal/music/music.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/normal/ringtone/ringtone.eq:system/etc/audio/tfa9887/default/normal/ringtone/ringtone.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/normal/ringtone/ringtone.preset:system/etc/audio/tfa9887/default/normal/ringtone/ringtone.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/normal/ringtone_hs_spk/ringtone_hs_spk.eq:system/etc/audio/tfa9887/default/normal/ringtone_hs_spk/ringtone_hs_spk.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/normal/ringtone_hs_spk/ringtone_hs_spk.preset:system/etc/audio/tfa9887/default/normal/ringtone_hs_spk/ringtone_hs_spk.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/normal/voip/voip.eq:system/etc/audio/tfa9887/default/normal/voip/voip.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/normal/voip/voip.preset:system/etc/audio/tfa9887/default/normal/voip/voip.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/default/speaker_model.speaker:system/etc/audio/tfa9887/default/speaker_model.speaker \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/ce/fm/fm.eq:system/etc/audio/tfa9887/TEDGE/ce/fm/fm.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/ce/fm/fm.preset:system/etc/audio/tfa9887/TEDGE/ce/fm/fm.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/ce/incall_nb/incall_nb.eq:system/etc/audio/tfa9887/TEDGE/ce/incall_nb/incall_nb.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/ce/incall_nb/incall_nb.preset:system/etc/audio/tfa9887/TEDGE/ce/incall_nb/incall_nb.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/ce/incall_wb/incall_wb.eq:system/etc/audio/tfa9887/TEDGE/ce/incall_wb/incall_wb.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/ce/incall_wb/incall_wb.preset:system/etc/audio/tfa9887/TEDGE/ce/incall_wb/incall_wb.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/ce/music/music.eq:system/etc/audio/tfa9887/TEDGE/ce/music/music.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/ce/music/music.preset:system/etc/audio/tfa9887/TEDGE/ce/music/music.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/ce/ringtone/ringtone.eq:system/etc/audio/tfa9887/TEDGE/ce/ringtone/ringtone.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/ce/ringtone/ringtone.preset:system/etc/audio/tfa9887/TEDGE/ce/ringtone/ringtone.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/ce/ringtone_hs_spk/ringtone_hs_spk.eq:system/etc/audio/tfa9887/TEDGE/ce/ringtone_hs_spk/ringtone_hs_spk.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/ce/ringtone_hs_spk/ringtone_hs_spk.preset:system/etc/audio/tfa9887/TEDGE/ce/ringtone_hs_spk/ringtone_hs_spk.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/ce/voip/voip.eq:system/etc/audio/tfa9887/TEDGE/ce/voip/voip.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/ce/voip/voip.preset:system/etc/audio/tfa9887/TEDGE/ce/voip/voip.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/normal/fm/fm.eq:system/etc/audio/tfa9887/TEDGE/normal/fm/fm.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/normal/fm/fm.preset:system/etc/audio/tfa9887/TEDGE/normal/fm/fm.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/normal/incall_nb/incall_nb.eq:system/etc/audio/tfa9887/TEDGE/normal/incall_nb/incall_nb.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/normal/incall_nb/incall_nb.preset:system/etc/audio/tfa9887/TEDGE/normal/incall_nb/incall_nb.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/normal/incall_wb/incall_wb.eq:system/etc/audio/tfa9887/TEDGE/normal/incall_wb/incall_wb.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/normal/incall_wb/incall_wb.preset:system/etc/audio/tfa9887/TEDGE/normal/incall_wb/incall_wb.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/normal/music/music.eq:system/etc/audio/tfa9887/TEDGE/normal/music/music.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/normal/music/music.preset:system/etc/audio/tfa9887/TEDGE/normal/music/music.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/normal/ringtone/ringtone.eq:system/etc/audio/tfa9887/TEDGE/normal/ringtone/ringtone.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/normal/ringtone/ringtone.preset:system/etc/audio/tfa9887/TEDGE/normal/ringtone/ringtone.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/normal/ringtone_hs_spk/ringtone_hs_spk.eq:system/etc/audio/tfa9887/TEDGE/normal/ringtone_hs_spk/ringtone_hs_spk.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/normal/ringtone_hs_spk/ringtone_hs_spk.preset:system/etc/audio/tfa9887/TEDGE/normal/ringtone_hs_spk/ringtone_hs_spk.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/normal/voip/voip.eq:system/etc/audio/tfa9887/TEDGE/normal/voip/voip.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/normal/voip/voip.preset:system/etc/audio/tfa9887/TEDGE/normal/voip/voip.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/TEDGE/speaker_model.speaker:system/etc/audio/tfa9887/TEDGE/speaker_model.speaker \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/ce/fm/fm.eq:system/etc/audio/tfa9887/UEDGE/ce/fm/fm.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/ce/fm/fm.preset:system/etc/audio/tfa9887/UEDGE/ce/fm/fm.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/ce/incall_nb/incall_nb.eq:system/etc/audio/tfa9887/UEDGE/ce/incall_nb/incall_nb.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/ce/incall_nb/incall_nb.preset:system/etc/audio/tfa9887/UEDGE/ce/incall_nb/incall_nb.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/ce/incall_wb/incall_wb.eq:system/etc/audio/tfa9887/UEDGE/ce/incall_wb/incall_wb.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/ce/incall_wb/incall_wb.preset:system/etc/audio/tfa9887/UEDGE/ce/incall_wb/incall_wb.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/ce/music/music.eq:system/etc/audio/tfa9887/UEDGE/ce/music/music.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/ce/music/music.preset:system/etc/audio/tfa9887/UEDGE/ce/music/music.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/ce/ringtone/ringtone.eq:system/etc/audio/tfa9887/UEDGE/ce/ringtone/ringtone.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/ce/ringtone/ringtone.preset:system/etc/audio/tfa9887/UEDGE/ce/ringtone/ringtone.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/ce/ringtone_hs_spk/ringtone_hs_spk.eq:system/etc/audio/tfa9887/UEDGE/ce/ringtone_hs_spk/ringtone_hs_spk.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/ce/ringtone_hs_spk/ringtone_hs_spk.preset:system/etc/audio/tfa9887/UEDGE/ce/ringtone_hs_spk/ringtone_hs_spk.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/ce/voip/voip.eq:system/etc/audio/tfa9887/UEDGE/ce/voip/voip.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/ce/voip/voip.preset:system/etc/audio/tfa9887/UEDGE/ce/voip/voip.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/normal/fm/fm.eq:system/etc/audio/tfa9887/UEDGE/normal/fm/fm.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/normal/fm/fm.preset:system/etc/audio/tfa9887/UEDGE/normal/fm/fm.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/normal/incall_nb/incall_nb.eq:system/etc/audio/tfa9887/UEDGE/normal/incall_nb/incall_nb.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/normal/incall_nb/incall_nb.preset:system/etc/audio/tfa9887/UEDGE/normal/incall_nb/incall_nb.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/normal/incall_wb/incall_wb.eq:system/etc/audio/tfa9887/UEDGE/normal/incall_wb/incall_wb.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/normal/incall_wb/incall_wb.preset:system/etc/audio/tfa9887/UEDGE/normal/incall_wb/incall_wb.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/normal/music/music.eq:system/etc/audio/tfa9887/UEDGE/normal/music/music.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/normal/music/music.preset:system/etc/audio/tfa9887/UEDGE/normal/music/music.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/normal/ringtone/ringtone.eq:system/etc/audio/tfa9887/UEDGE/normal/ringtone/ringtone.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/normal/ringtone/ringtone.preset:system/etc/audio/tfa9887/UEDGE/normal/ringtone/ringtone.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/normal/ringtone_hs_spk/ringtone_hs_spk.eq:system/etc/audio/tfa9887/UEDGE/normal/ringtone_hs_spk/ringtone_hs_spk.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/normal/ringtone_hs_spk/ringtone_hs_spk.preset:system/etc/audio/tfa9887/UEDGE/normal/ringtone_hs_spk/ringtone_hs_spk.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/normal/voip/voip.eq:system/etc/audio/tfa9887/UEDGE/normal/voip/voip.eq \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/normal/voip/voip.preset:system/etc/audio/tfa9887/UEDGE/normal/voip/voip.preset \
    device/huawei/common/prebuilt/etc/audio/tfa9887/UEDGE/speaker_model.speaker:system/etc/audio/tfa9887/UEDGE/speaker_model.speaker \
    device/huawei/common/prebuilt/etc/audio/tfa9887/coldboot.patch:system/etc/audio/tfa9887/coldboot.patch \
    device/huawei/common/prebuilt/etc/audio/tfa9887/tfa9887_feature.config:system/etc/audio/tfa9887/tfa9887_feature.config \
    device/huawei/common/prebuilt/etc/audio/tfa9887/tfa9887_firmware.patch:system/etc/audio/tfa9887/tfa9887_firmware.patch \
    device/huawei/common/prebuilt/etc/audio/tpa2028/tpa2028_U9701G.cfg:system/etc/audio/tpa2028/tpa2028_U9701G.cfg \
    device/huawei/common/prebuilt/etc/audio/tpa2028/tpa2028_U9701L.cfg:system/etc/audio/tpa2028/tpa2028_U9701L.cfg


PRODUCT_COPY_FILES += \
    device/huawei/common/prebuilt/etc/camera_orientation.cfg:system/etc/camera_orientation.cfg \
    device/huawei/common/prebuilt/etc/camera_resolutions.cfg:system/etc/camera_resolutions.cfg \
    device/huawei/common/prebuilt/etc/es305.bin:system/etc/es305.bin \
    device/huawei/common/prebuilt/etc/es305_uart.bin:system/etc/es305_uart.bin \
    device/huawei/common/prebuilt/etc/gpsconfig.xml:system/etc/gpsconfig.xml \
    device/huawei/common/prebuilt/etc/k3_omx.cfg:system/etc/k3_omx.cfg \
    device/huawei/common/prebuilt/etc/ril_balong_radio.cfg:/system/etc/ril_balong_radio.cfg \
    device/huawei/common/prebuilt/etc/ril_xgold_radio.cfg:/system/etc/ril_xgold_radio.cfg \
    device/huawei/common/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/common/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/huawei/common/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/huawei/common/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/common/prebuilt/etc/asound_ADL.dat:system/etc/asound_ADL.dat

PRODUCT_COPY_FILES += \
    device/huawei/common/prebuilt/etc/camera/davinci/device.config:system/etc/camera/davinci/device.config \
    device/huawei/common/prebuilt/etc/camera/davinci/default/cm_correction.dat:system/etc/camera/davinci/default/cm_correction.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/default/cm_foliage.dat:system/etc/camera/davinci/default/cm_foliage.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/default/cm_normal.dat:system/etc/camera/davinci/default/cm_normal.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/default/cm_sky.dat:system/etc/camera/davinci/default/cm_sky.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/default/cm_sunset.dat:system/etc/camera/davinci/default/cm_sunset.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/default/imgproc.xml:system/etc/camera/davinci/default/imgproc.xml \
    device/huawei/common/prebuilt/etc/camera/davinci/hi542/cm_correction.dat:system/etc/camera/davinci/hi542/cm_correction.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/hi542/cm_foliage.dat:system/etc/camera/davinci/hi542/cm_foliage.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/hi542/cm_normal.dat:system/etc/camera/davinci/hi542/cm_normal.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/hi542/cm_sky.dat:system/etc/camera/davinci/hi542/cm_sky.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/hi542/cm_sunset.dat:system/etc/camera/davinci/hi542/cm_sunset.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/hi542/imgproc.xml:system/etc/camera/davinci/hi542/imgproc.xml \
    device/huawei/common/prebuilt/etc/camera/davinci/ov8830/cm_correction.dat:system/etc/camera/davinci/ov8830/cm_correction.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/ov8830/cm_foliage.dat:system/etc/camera/davinci/ov8830/cm_foliage.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/ov8830/cm_normal.dat:system/etc/camera/davinci/ov8830/cm_normal.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/ov8830/cm_sky.dat:system/etc/camera/davinci/ov8830/cm_sky.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/ov8830/cm_sunset.dat:system/etc/camera/davinci/ov8830/cm_sunset.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/ov8830/imgproc.xml:system/etc/camera/davinci/ov8830/imgproc.xml \
    device/huawei/common/prebuilt/etc/camera/davinci/s5k4e1ga_foxconn/cm_correction.dat:system/etc/camera/davinci/s5k4e1ga_foxconn/cm_correction.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/s5k4e1ga_foxconn/cm_foliage.dat:system/etc/camera/davinci/s5k4e1ga_foxconn/cm_foliage.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/s5k4e1ga_foxconn/cm_normal.dat:system/etc/camera/davinci/s5k4e1ga_foxconn/cm_normal.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/s5k4e1ga_foxconn/cm_sky.dat:system/etc/camera/davinci/s5k4e1ga_foxconn/cm_sky.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/s5k4e1ga_foxconn/cm_sunset.dat:system/etc/camera/davinci/s5k4e1ga_foxconn/cm_sunset.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/s5k4e1ga_foxconn/imgproc.xml:system/etc/camera/davinci/s5k4e1ga_foxconn/imgproc.xml \
    device/huawei/common/prebuilt/etc/camera/davinci/sonyimx134_liteon/cm_correction.dat:system/etc/camera/davinci/sonyimx134_liteon/cm_correction.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/sonyimx134_liteon/cm_foliage.dat:system/etc/camera/davinci/sonyimx134_liteon/cm_foliage.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/sonyimx134_liteon/cm_normal.dat:system/etc/camera/davinci/sonyimx134_liteon/cm_normal.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/sonyimx134_liteon/cm_sky.dat:system/etc/camera/davinci/sonyimx134_liteon/cm_sky.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/sonyimx134_liteon/cm_sunset.dat:system/etc/camera/davinci/sonyimx134_liteon/cm_sunset.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/sonyimx134_liteon/imgproc.xml:system/etc/camera/davinci/sonyimx134_liteon/imgproc.xml \
    device/huawei/common/prebuilt/etc/camera/davinci/sonyimx134_liteon/luma_boost.dat:system/etc/camera/davinci/sonyimx134_liteon/luma_boost.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/sonyimx134_liteon/skin_mask_lite.dat:system/etc/camera/davinci/sonyimx134_liteon/skin_mask_lite.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/sonyimx135_liteon/cm_correction.dat:system/etc/camera/davinci/sonyimx135_liteon/cm_correction.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/sonyimx135_liteon/cm_foliage.dat:system/etc/camera/davinci/sonyimx135_liteon/cm_foliage.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/sonyimx135_liteon/cm_normal.dat:system/etc/camera/davinci/sonyimx135_liteon/cm_normal.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/sonyimx135_liteon/cm_sky.dat:system/etc/camera/davinci/sonyimx135_liteon/cm_sky.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/sonyimx135_liteon/cm_sunset.dat:system/etc/camera/davinci/sonyimx135_liteon/cm_sunset.dat \
    device/huawei/common/prebuilt/etc/camera/davinci/sonyimx135_liteon/imgproc.xml:system/etc/camera/davinci/sonyimx135_liteon/imgproc.xml \
    device/huawei/common/prebuilt/etc/camera/lowlight/lowlightcfg.xml:system/etc/camera/lowlight/lowlightcfg.xml \
    device/huawei/common/prebuilt/etc/camera/tornado/ExpMatrixTOA.txt:system/etc/camera/tornado/ExpMatrixTOA.txt \
    device/huawei/common/prebuilt/etc/camera/tornado/FireworksMinMaxTOA.txt:system/etc/camera/tornado/FireworksMinMaxTOA.txt \
    device/huawei/common/prebuilt/etc/camera/tornado/FireworksModelTOA.model:system/etc/camera/tornado/FireworksModelTOA.model \
    device/huawei/common/prebuilt/etc/camera/tornado/FoliageMinMaxTOA.txt:system/etc/camera/tornado/FoliageMinMaxTOA.txt \
    device/huawei/common/prebuilt/etc/camera/tornado/FoliageModelTOA.model:system/etc/camera/tornado/FoliageModelTOA.model \
    device/huawei/common/prebuilt/etc/camera/tornado/IndoorDstMinMaxTOA.txt:system/etc/camera/tornado/IndoorDstMinMaxTOA.txt \
    device/huawei/common/prebuilt/etc/camera/tornado/IndoorMixModelTOA.model:system/etc/camera/tornado/IndoorMixModelTOA.model \
    device/huawei/common/prebuilt/etc/camera/tornado/IndoorMixModelTOA_linear.model:system/etc/camera/tornado/IndoorMixModelTOA_linear.model \
    device/huawei/common/prebuilt/etc/camera/tornado/IndoorOutdoorModelTOA.model:system/etc/camera/tornado/IndoorOutdoorModelTOA.model \
    device/huawei/common/prebuilt/etc/camera/tornado/IndoorOutdoorModelTOA_rbf.model:system/etc/camera/tornado/IndoorOutdoorModelTOA_rbf.model \
    device/huawei/common/prebuilt/etc/camera/tornado/NightMinMaxTOA.txt:system/etc/camera/tornado/NightMinMaxTOA.txt \
    device/huawei/common/prebuilt/etc/camera/tornado/NightModelTOA.model:system/etc/camera/tornado/NightModelTOA.model \
    device/huawei/common/prebuilt/etc/camera/tornado/OutdoorMixModelTOA.model:system/etc/camera/tornado/OutdoorMixModelTOA.model \
    device/huawei/common/prebuilt/etc/camera/tornado/OutdoorMixModelTOA_linear.model:system/etc/camera/tornado/OutdoorMixModelTOA_linear.model \
    device/huawei/common/prebuilt/etc/camera/tornado/scene_debugX.xml:system/etc/camera/tornado/scene_debugX.xml \
    device/huawei/common/prebuilt/etc/camera/tornado/SunsetMinMaxTOA.txt:system/etc/camera/tornado/SunsetMinMaxTOA.txt \
    device/huawei/common/prebuilt/etc/camera/tornado/SunsetModelTOA.model:system/etc/camera/tornado/SunsetModelTOA.model \
    device/huawei/common/prebuilt/etc/camera/tornado/TornadoI.ini:system/etc/camera/tornado/TornadoI.ini \
    device/huawei/common/prebuilt/etc/camera/tornado_front/ExpMatrixTOA.txt:system/etc/camera/tornado_front/ExpMatrixTOA.txt \
    device/huawei/common/prebuilt/etc/camera/tornado_front/FireworksMinMaxTOA.txt:system/etc/camera/tornado_front/FireworksMinMaxTOA.txt \
    device/huawei/common/prebuilt/etc/camera/tornado_front/FireworksModelTOA.model:system/etc/camera/tornado_front/FireworksModelTOA.model \
    device/huawei/common/prebuilt/etc/camera/tornado_front/FoliageMinMaxTOA.txt:system/etc/camera/tornado_front/FoliageMinMaxTOA.txt \
    device/huawei/common/prebuilt/etc/camera/tornado_front/FoliageModelTOA.model:system/etc/camera/tornado_front/FoliageModelTOA.model \
    device/huawei/common/prebuilt/etc/camera/tornado_front/IndoorDstMinMaxTOA.txt:system/etc/camera/tornado_front/IndoorDstMinMaxTOA.txt \
    device/huawei/common/prebuilt/etc/camera/tornado_front/IndoorMixModelTOA.model:system/etc/camera/tornado_front/IndoorMixModelTOA.model \
    device/huawei/common/prebuilt/etc/camera/tornado_front/IndoorMixModelTOA_linear.model:system/etc/camera/tornado_front/IndoorMixModelTOA_linear.model \
    device/huawei/common/prebuilt/etc/camera/tornado_front/IndoorOutdoorModelTOA.model:system/etc/camera/tornado_front/IndoorOutdoorModelTOA.model \
    device/huawei/common/prebuilt/etc/camera/tornado_front/IndoorOutdoorModelTOA_rbf.model:system/etc/camera/tornado_front/IndoorOutdoorModelTOA_rbf.model \
    device/huawei/common/prebuilt/etc/camera/tornado_front/NightMinMaxTOA.txt:system/etc/camera/tornado_front/NightMinMaxTOA.txt \
    device/huawei/common/prebuilt/etc/camera/tornado_front/NightModelTOA.model:system/etc/camera/tornado_front/NightModelTOA.model \
    device/huawei/common/prebuilt/etc/camera/tornado_front/OutdoorMixModelTOA.model:system/etc/camera/tornado_front/OutdoorMixModelTOA.model \
    device/huawei/common/prebuilt/etc/camera/tornado_front/OutdoorMixModelTOA_linear.model:system/etc/camera/tornado_front/OutdoorMixModelTOA_linear.model \
    device/huawei/common/prebuilt/etc/camera/tornado_front/scene_debugX.xml:system/etc/camera/tornado_front/scene_debugX.xml \
    device/huawei/common/prebuilt/etc/camera/tornado_front/SunsetMinMaxTOA.txt:system/etc/camera/tornado_front/SunsetMinMaxTOA.txt \
    device/huawei/common/prebuilt/etc/camera/tornado_front/SunsetModelTOA.model:system/etc/camera/tornado_front/SunsetModelTOA.model \
    device/huawei/common/prebuilt/etc/camera/tornado_front/TornadoI.ini:system/etc/camera/tornado_front/TornadoI.ini \
    device/huawei/common/prebuilt/etc/camera/tracking/targettracking.xml:system/etc/camera/tracking/targettracking.xml \
    device/huawei/common/prebuilt/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf.bin:system/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf.bin \
    device/huawei/common/prebuilt/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-C9800D.bin:system/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-C9800D.bin \
    device/huawei/common/prebuilt/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-CEDGE.bin:system/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-CEDGE.bin \
    device/huawei/common/prebuilt/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-T9800L.bin:system/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-T9800L.bin \
    device/huawei/common/prebuilt/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-T9900.bin:system/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-T9900.bin \
    device/huawei/common/prebuilt/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-TEDGE.bin:system/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-TEDGE.bin \
    device/huawei/common/prebuilt/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-U9700LVA.bin:system/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-U9700LVA.bin \
    device/huawei/common/prebuilt/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-U9701L_VA.bin:system/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-U9701L_VA.bin \
    device/huawei/common/prebuilt/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-U9800DNV1.bin:system/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-U9800DNV1.bin \
    device/huawei/common/prebuilt/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-U9900.bin:system/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-U9900.bin \
    device/huawei/common/prebuilt/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-U9900L.bin:system/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-U9900L.bin \
    device/huawei/common/prebuilt/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-UEDGE.bin:system/etc/firmware/ti-connectivity/wl18xx-conf/wl18xx-conf-UEDGE.bin \
    device/huawei/common/prebuilt/etc/firmware/ti-connectivity/wl18xx-fw.bin:system/etc/firmware/ti-connectivity/wl18xx-fw.bin \
    device/huawei/common/prebuilt/etc/firmware/ti-connectivity/wl18xx-fw-mc.bin:system/etc/firmware/ti-connectivity/wl18xx-fw-mc.bin \
    device/huawei/common/prebuilt/etc/firmware/ti-connectivity/wl1271-nvs.bin:system/etc/firmware/ti-connectivity/wl1271-nvs.bin \
    device/huawei/common/prebuilt/etc/firmware/fmc_ch8_1893.3.bts:system/etc/firmware/fmc_ch8_1893.3.bts \
    device/huawei/common/prebuilt/etc/firmware/fm_rx_ch8_1893.3.bts:system/etc/firmware/fm_rx_ch8_1893.3.bts \
    device/huawei/common/prebuilt/etc/firmware/TIInit_12.8.32.bts:system/etc/firmware/TIInit_12.8.32.bts \
    device/huawei/common/prebuilt/usr/idc/hisik3_touchscreen.idc:system/usr/idc/hisik3_touchscreen.idc \
    device/huawei/common/prebuilt/usr/idc/cyttsp4_mt.idc:system/usr/idc/cyttsp4_mt.idc \
    device/huawei/common/prebuilt/usr/idc/k3_keypad.idc:system/usr/idc/k3_keypad.idc \
    device/huawei/common/prebuilt/usr/idc/screenovate_keyboard.idc:system/usr/idc/screenovate_keyboard.idc \
    device/huawei/common/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/common/prebuilt/usr/idc/screenovate_mouse.idc:system/usr/idc/screenovate_mouse.idc \
    device/huawei/common/prebuilt/usr/keylayout/k3_keypad.kl:system/usr/keylayout/k3_keypad.kl \
    device/huawei/common/prebuilt/usr/keylayout/screenovate_keyboard.kl:system/usr/keylayout/screenovate_keyboard.kl \
    device/huawei/common/prebuilt/usr/keychars/screenovate_keyboard.kcm:system/usr/keychars/screenovate_keyboard.kcm


# This device have enough room for precise davick
PRODUCT_TAGS += dalvik.gc.type-precise

# Prime spacific overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.manufacturer=HUAWEI\
    ro.product.model=MT1-U06

# Advanced Settings for Huawei
PRODUCT_PACKAGES += HuaweiParts

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
	audio.usb.default \
    libaudioutils

# Wifi
PRODUCT_COPY_FILES += \
    device/huawei/common/prebuilt/etc/wifi/p2p_supplicant.conf:/system/etc/wifi/p2p_supplicant.conf

PRODUCT_PACKAGES += \
    wpa_supplicant.conf \
    hostapd.conf

# Misc
PRODUCT_PACKAGES += \
    setup_fs \
    librs_jni \
    libsrec_jni \
    com.android.future.usb.accessory \
    make_ext4fs 

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
	CMWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers

#Theme package
PRODUCT_PACKAGES += \
	ThemeManager \
	ThemeChooser \
	com.tmobile.themes \
	Androidian \
	Cyanbread


PRODUCT_PACKAGES += \
    Torch \
    Stk

# Bluetooth & FmRadio
PRODUCT_PACKAGES += \
    uim-sysfs \
    libbt-vendor \
    bt_sco_app \
    BluetoothSCOApp \
    libtinyalsa

# Other Packages
PRODUCT_PACKAGES += \
    dexpreopt \
    make_ext4fs \
    setup_fs \
    Torch \
	Stk \
	SpareParts \
	libnl_2 \
    com.android.future.usb.accessory

# General
PRODUCT_PROPERTY_OVERRIDES := \
    ro.ril.hsxpa=2 \
	ro.config.fm_type=libbcmfm_if \

# Enable switch storage 
PRODUCT_COPY_FILES += \
    device/huawei/common/prebuilt/etc/init.d/preparesd:/system/etc/init.d/preparesd

# OpenGL ES
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    ap.interface=wlan1 \
    ro.config.hw_acceleratord_onoff=1 \
    ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES+= dalvik.vm.execution-mode=int:jit \
dalvik.vm.dexopt-flags=v=a,o=v,m=y,u=y \
dalvik.vm.checkjni=0 \
dalvik.vm.debug.alloc=0 \
dalvik.vm.dexopt-data-only=1 \

$(call inherit-product, build/target/product/full.mk)

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

#PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cm_hwmt1_u06
PRODUCT_DEVICE := hwmt1_u06
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_MODEL := MT1-U06
PRODUCT_BOARD := MT1-U06
PRODUCT_BRAND := Huawei