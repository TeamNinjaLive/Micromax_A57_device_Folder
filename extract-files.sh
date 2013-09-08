#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=a57
MANUFACTURER=micromax

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1

# rill
adb pull /system/bin/qmuxd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/hciattach ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/rmt_storage ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/netmgrd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/port-bridge ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/rild ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# omx libs
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAacDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAacEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAdpcmDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrRtpDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrwbDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcHwDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxMp3Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxOn2Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelp13Enc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelpDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelpHwDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxWmaDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxWmvDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# omx shared libs
adb pull /system/lib/libomx_aacdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_amrdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_amrenc_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_avcdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_m4vdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_mp3dec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# camera
adb pull /system/lib/libcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liboemcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmipl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcamera_client.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcameraservice.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# wifi
adb pull /system/wifi/ar6000.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/athwlan.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/athwlan_mobile.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/data.patch.hw3_0.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/otp.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/device.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/athwlan_router.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
adb pull /system/bin/hostapd-cli ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# bluetooth
adb pull /system/bin/hciattach ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/hci_qcomm_init ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# audio
adb pull /system/lib/liba2dp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libaudioeq.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# gps
adb pull /system/lib/hw/gps.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw

# lights
adb pull /system/lib/hw/lights.msm7k.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw

# sensor
adb pull /system/lib/hw/sensors.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/bin/memsicd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/lib/libacc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libaccelcal.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
# egl
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/cyttspfw.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/lib/libgsl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/egl/egl.cfg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

## RIL related stuff
PRODUCT_COPY_FILES += \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/hciattach:/system/bin/hciattach \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/netmgrd:/system/bin/netmgrd \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/rmt_storage:/system/bin/rmt_storage \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/bluetoothd:/system/bin/bluetoothd \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/port-bridge:/system/bin/port-bridge \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/cnd:/system/bin/cnd \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/rild:/system/bin/rild \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril.so:/system/lib/libril.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril-qc-1.so:/system/lib/libril-qc-1.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libreference-ril.so:/system/lib/libreference-ril.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdiag.so:/system/lib/libdiag.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboncrpc.so:/system/lib/liboncrpc.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libqmi.so:/system/lib/libqmi.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdsm.so:/system/lib/libdsm.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libqueue.so:/system/lib/libqueue.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcm.so:/system/lib/libcm.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmgsdilib.so:/system/lib/libmmgsdilib.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libgsdi_exp.so:/system/lib/libgsdi_exp.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libgstk_exp.so:/system/lib/libgstk_exp.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libwms.so:/system/lib/libwms.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libnv.so:/system/lib/libnv.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libwmsts.so:/system/lib/libwmsts.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libpbmlib.so:/system/lib/libpbmlib.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdss.so:/system/lib/libdss.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libauth.so:/system/lib/libauth.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libidl.so:/system/lib/libidl.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdsutils.so:/system/lib/libdsutils.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboem_rapi.so:/system/lib/liboem_rapi.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libnetmgr.so:/system/lib/libnetmgr.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboncrpc.so:/system/lib/liboncrpc.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libpdapi.so:/system/lib/libpdapi.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libpdsm_atl.so:/system/lib/libpdsm_atl.so \\
vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libuim.so:/system/lib/libuim.so


## OMX proprietaries
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxEvrcHwDec.so:system/lib/libOmxEvrcHwDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxOn2Dec.so:system/lib/libOmxOn2Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxQcelpHwDec.so:system/lib/libOmxQcelpHwDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so 

## OMX shared
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so

## Camera proprietaries
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcamera.so:system/lib/liblilgcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcamera_client.so:system/lib/libcamera_client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcameraservice.so:system/lib/libcameraservice.so 

## Atheros AR6003 firmware
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ar6000.ko:system/wifi/ar6000.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin:system/wifi/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ath6k/AR6003/hw2.1.1/athwlan.bin:system/wifi/ath6k/AR6003/hw2.1.1/athwlan.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ath6k/AR6003/hw2.1.1/bdata.SD31.bin:system/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ath6k/AR6003/hw2.1.1/athwlan_router.bin:system/wifi/ath6k/AR6003/hw2.1.1/athwlan_router.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ath6k/AR6003/hw2.1.1/athwlan_mobile.bin:system/wifi/ath6k/AR6003/hw2.1.1/athwlan_mobile.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ath6k/AR6003/hw2.1.1/otp.bin:system/wifi/ath6k/AR6003/hw2.1.1/otp.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ath6k/AR6003/hw2.1.1/device.bin:system/wifi/ath6k/AR6003/hw2.1.1/device.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ath6k/AR6003/hw2.1.1/data.patch.hw3_0.bin:system/wifi/ath6k/AR6003/hw2.1.1/data.patch.hw3_0.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/hostapd_cli:system/bin/hostapd_cli 

## Bluetooth
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/hciattach:system/bin/hciattach 
	
## Audio
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so 

##GPS
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/gps.default.so:system/lib/hw/gps.default.so \\
 

## Light
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/lights.msm7k.so:system/lib/hw/lights.msm7k.so \\

	
## 3D
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/firmware/cyttspfw.fw:system/etc/firmware/cyttspfw.fw \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libgsl.so:system/lib/libgsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg 

## Sensor
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/memsicd:system/bin/memsicd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libacc.so:system/lib/libacc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libaccelcal.so:system/lib/libaccelcal.so 

EOF

./setup-makefiles.sh
