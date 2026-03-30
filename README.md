### TWRP device tree for TicWatch E3 (ricefish)
=========================================

The TicWatch E3 (codenamed _"ricefish"_) is a smartwatch from Mobvoi.

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core CPU with 4x Arm Cortex-A53 up to 1.7GHz
Chipset | Qualcomm Wear 4100（MSM8937/SDM429W）
GPU     | Qualcomm Adreno™ 504
Memory  | 1 GB RAM
OS | Wear OS by Google
Storage | 8G EMMC
Battery | Non-removable Li-Po 380 mAh battery
Display | 360 x 360 pixels, 1.3 inches, 60 Hz, TFT LCD

<img src="https://growth-cdn.ticwear.com/ticbuy/img/ticwatche3-style-watch-black.0.png" width="243" height="361">

## Features

Works:

- [X] ADB
- [] Decryption (WearOS 3.5 By Android 11)
- [X] Display
- [X] Flashing
- [X] MTP
- [X] Sideload
- [X] Vibrator
- [X] Touch

## Compile

First checkout minimal twrp with aosp tree:

```
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-11
repo sync -j$(nproc --all)
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/mobvoi/ricefish" name="mytiantian001/android_device_mobvoi_ricefish_twrp" remote="github" revision="Wear3.5-a11" />
```

Finally execute these:

```
source build/envsetup.sh
repopick <needed patch>
lunch twrp_ricefish-eng
mka recoveryimage -j$(nproc --all)
```
## To use it:

```
fastboot flash recovery out/target/product/ricefish/recovery.img
```
