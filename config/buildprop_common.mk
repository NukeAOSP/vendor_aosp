# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    windowsmgr.max_events_per_sec=280 \
    net.bt.name=Android \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=96m \
    dalvik.vm.heapsize=256m \
    dalvik.vm.dexopt-flags=m=y,v=n,o=v \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.lockprof.threshold=850 \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.verify-bytecode=false \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt \
    ro.media.enc.jpeg.quality=100 \
    debug.sf.hw=1 \
    debug.performance.tuning=1 \
    video.accelerate.hw=1 \
    pm.sleep_mode=1 \
    ro.HOME_APP_ADJ=1 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.hprof.vid.bps=8000000 \
    ro.media.enc.hprof.vid.fps=65 \
    ro.media.enc.jpeg.quality=100 \
    debug.composition.type=gpu \
    ro.telephony.call_ring.delay=500 \
    ro.max.fling_velocity=12000 \
    ro.min.fling_velocity=8000 \
    ro.lge.proximity.delay=25 \
    mot.proximity.delay=25 \
    net.tcp.buffersize.default=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.wifi=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.umts=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.gprs=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.edge=4096,87380,256960,4096,16384,256960

# Misc Files & init.d files
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/aosp/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/aosp/prebuilt/common/etc/init.local.rc:root/init.xylon.rc \
    vendor/aosp/prebuilt/common/bin/sysinit:system/bin/sysinit

# 01010101010101010010101010
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/common/bin/set_sysctl:system/bin/set_sysctl \
    vendor/aosp/prebuilt/common/bin/zipalign:system/bin/zipalign \
    vendor/aosp/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/aosp/prebuilt/common/etc/init.d/02cleaning:system/etc/init.d/02cleaning \
    vendor/aosp/prebuilt/common/etc/init.d/88zipalign:system/etc/init.d/88zipalign \
    vendor/aosp/prebuilt/common/etc/init.d/97battery:system/etc/init.d/97battery

# Bring 'em battery drainer
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/common/bin/seeder:system/bin/seeder \
    vendor/aosp/prebuilt/common/etc/init.d/awwshit:system/etc/init.d/awwshit \
    vendor/aosp/prebuilt/common/xbin/entro:system/xbin/entro \
    vendor/aosp/prebuilt/common/xbin/rngd:system/xbin/rngd \

# Google Proprietaries
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/common/lib/libgtalk_jni.so:system/lib/libgtalk_jni.so \
    vendor/aosp/prebuilt/common/lib/libgtalk_stabilize.so:system/lib/libgtalk_stabilize.so \
    vendor/aosp/prebuilt/common/lib/libjni_filtershow_filters.so:system/lib/libjni_filtershow_filters.so \
    vendor/aosp/prebuilt/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/aosp/prebuilt/common/lib/liblightcycle.so:system/lib/liblightcycle.so
