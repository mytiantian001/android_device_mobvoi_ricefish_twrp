#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/mobvoi/ricefish

# Import TWRP vendor (crypto) blobs into recovery root so FBE decryption works.
# Keymaster/Gatekeeper/QSEecom HAL stack (32-bit, from stock vendor RMKB.240228.004).
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/vendor/bin/hw/android.hardware.gatekeeper@1.0-service-qti:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/bin/hw/android.hardware.gatekeeper@1.0-service-qti \
    $(LOCAL_PATH)/prebuilt/vendor/bin/hw/android.hardware.keymaster@4.0-service-qti:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/bin/hw/android.hardware.keymaster@4.0-service-qti \
    $(LOCAL_PATH)/prebuilt/vendor/bin/hw/vendor.qti.hardware.qseecom@1.0-service:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/bin/hw/vendor.qti.hardware.qseecom@1.0-service \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libkeymasterdeviceutils.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libkeymasterdeviceutils.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libkeymasterutils.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libkeymasterutils.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libqcbor.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libqcbor.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libQSEEComAPI.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libQSEEComAPI.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libqtikeymaster4.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libqtikeymaster4.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/vendor.qti.hardware.qseecom@1.0.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/vendor.qti.hardware.qseecom@1.0.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/hw/android.hardware.gatekeeper@1.0-impl-qti.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/hw/android.hardware.keymaster@3.0-impl-qti.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/hw/android.hardware.keymaster@3.0-impl-qti.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/hw/vendor.qti.hardware.qseecom@1.0-impl.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/hw/vendor.qti.hardware.qseecom@1.0-impl.so

# Recovery / decrypt properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore_desede=true \
    vendor.qti.qsee_ice.use_ice_for_fbe=true \
    ro.crypto.volume.filenames_mode=aes-256-cts \
    ro.crypto.volume.content_mode=aes-256-xts \
    ro.crypto.fde_algorithm=aes-256-xts
