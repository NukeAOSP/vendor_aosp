# Generic product
PRODUCT_NAME := aosp
PRODUCT_BRAND := aosp
PRODUCT_DEVICE := generic

# Build Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xylon.version=$(TARGET_PRODUCT)_010_$(shell date +"%m-%d-%Y")

PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/common

# T-Mobile theme engine
include vendor/aosp/config/themes_common.mk

# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    windowsmgr.max_events_per_sec=280 \
    debug.performance.tuning=1 \
    video.accelerate.hw=1 \
    debug.sf.hw=1 \
    ro.media.enc.jpeg.quality=100 \
    ro.ril.disable.power.collapse=0 \
    ro.telephony.call_ring.delay=500 \
    video.accelerate.hw=1 \
    ro.kernel.checkjni=0 \
    net.tcp.buffersize.default=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.wifi=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.umts=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.gprs=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.edge=4096,87380,256960,4096,16384,256960 

# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JOP40D BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_EST_DATE=$(shell date +"%s")

# Bring in all audio files
include frameworks/base/data/sounds/NewAudio.mk

# Extra Ringtones
include frameworks/base/data/sounds/AudioPackageNewWave.mk

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# CyanogenMod Packages
PRODUCT_PACKAGES += \
        CMFileManager \
	DSPManager \
        libcyanogen-dsp \
        audio_effects.conf

# Xylon Packages
PRODUCT_PACKAGES += \
        NovaLauncher \
        PerformanceControl \
        SuperSU \
        Torch \
        Xylonpapers

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/xbin/su:system/xbin/su \
    vendor/aosp/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/aosp/prebuilt/common/xbin/sysro:system/xbin/sysro

# Misc Files & init.d files
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/aosp/prebuilt/common/etc/init.d/00fnv:system/etc/init.d/00fnv \
    vendor/aosp/prebuilt/common/etc/init.d/01cherrybomb:system/etc/init.d/01cherrybomb \
    vendor/aosp/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/aosp/prebuilt/common/etc/init.d/98fruit:system/etc/init.d/98fruit \
    vendor/aosp/prebuilt/common/etc/init.local.rc:root/init.xylon.rc \
    vendor/aosp/prebuilt/common/bin/sysinit:system/bin/sysinit

# Google Proprietaries
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/common/lib/libgtalk_jni.so:system/lib/libgtalk_jni.so \
    vendor/aosp/prebuilt/common/lib/libgtalk_stabilize.so:system/lib/libgtalk_stabilize.so \
    vendor/aosp/prebuilt/common/lib/libjni_filtershow_filters.so:system/lib/libjni_filtershow_filters.so \
    vendor/aosp/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/aosp/prebuilt/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/aosp/prebuilt/common/lib/liblightcycle.so:system/lib/liblightcycle.so
