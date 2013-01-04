# Generic product
PRODUCT_NAME := vanir
PRODUCT_BRAND := vanir
PRODUCT_DEVICE := generic
DHO_VENDOR := vanir

# Build packages included in manifest
PRODUCT_PACKAGES += \
    AppWidgetPicker \
    Email \
    busybox

# Build Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1 \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg \
    ro.modversion=v4.0_RC1

# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.checkjni=false \
    dalvik.vm.dexopt-flags=v=n,o=v,u=n,m=y \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapgrowthlimit=96m \
    dalvik.vm.heapmaxfree=8m \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapsize=256m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt \
    dalvik.vm.verify-bytecode=false \
    mot.proximity.delay=20 \
    movfilter=40 \
    per_sec=300 \
    net.bt.name=Android \
    persist.service.swiqi.enable=1 \
    persist.service.xloud.enable=1 \
    persist.sys.purgeable_assets=1 \
    persist.sys.use_dithering=0 \
    pm.sleep_mode=1 \
    ro.config.nocheckin=1 \
    ro.config.hwfeature_wakeupkey=0 \
    ro.ext4fs=1 \
    ro.goo.developerid=vanir \
    ro.goo.version=4 \
    ro.HOME_APP_ADJ=1 \
    ro.HOME_APP_MEM=8192 \
    ro.FOREGROUND_APP_MEM=8192 \
    ro.kernel.android.checkjni=0 \
    ro.kernel.checkjni=0 \
    ro.lge.proximity.delay=20 \
    ro.max.fling_velocity=15000 \
    ro.media.enc.hprof.vid.bps=8000000 \
    ro.media.enc.hprof.vid.fps=65 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.jpeg.quality=100 \
    ro.min.fling_velocity=10000 \
    ro.mot.eri.losalert.delay=600 \
    ro.semc.xloud.supported=true \
    ro.semc.sound_effects_enabled=true \
    ro.service.swiqi.supported=true \
    ro.rommanager.developerid=vanir \
    ro.VISIBLE_APP_MEM=8192 \
    video.accelerate.hw=1 \
    wifi.supplicant_scan_interval=300 \
    windowsmgr.max_events_per_sec=280

### Possible culprits in random reboots I THINK?... difference is negligible without these
#    debug.composition.type=gpu \
#    debug.performance.tuning=1 \
#    debug.sf.hw=1 \

### These will prevent any FC popups from showing... ever. (lol)
#    profiler.force_disable_err_rpt=1 \
#    profiler.force_disable_ulog=1 \

# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JOP40C BUILD_ID=JOP40C BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_EST_DATE=$(shell date +"%s")

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/vanir/proprietary/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/vanir/proprietary/common/xbin/su:system/xbin/su \
    vendor/vanir/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/vanir/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/vanir/proprietary/common/xbin/testinitd:system/xbin/testinitd \
    vendor/vanir/proprietary/common/xbin/vanircheckcpu:system/xbin/vanircheckcpu \
    vendor/vanir/proprietary/common/xbin/vanirtweakapply:system/xbin/vanirtweakapply \
    vendor/vanir/proprietary/common/xbin/vanir:system/xbin/vanir \
    vendor/vanir/proprietary/common/xbin/vanirflash:system/xbin/vanirflash \
    vendor/vanir/proprietary/common/xbin/vanirnice:system/xbin/vanirnice

#Imoseyon's zram script
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/xbin/zram:system/xbin/zram

# Misc Files
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/etc/hosts:system/etc/hosts \
    vendor/vanir/proprietary/common/etc/resolv.conf:system/etc/resolv.conf

# bash stuff... config files and so's
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/vanir/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinime.so

# init.vanir.rc, 2 copies of it for compatibility, and some shell scripts from CM
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/init.vanir.rc:root/init.vanir.rc \
    vendor/vanir/proprietary/common/bin/sysinit:system/bin/sysinit \
    vendor/vanir/proprietary/common/bin/cronlogger:system/bin/cronlogger

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/etc/vanir.cfg:system/etc/vanir.cfg

# init.d Tweaks
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/vanir/proprietary/common/etc/init.d/00firsties:system/etc/init.d/00firsties \
    vendor/vanir/proprietary/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/vanir/proprietary/common/etc/init.d/98SONIC_SHOCK:system/etc/init.d/98SONIC_SHOCK \
    vendor/vanir/proprietary/common/etc/init.d/99vanir:system/etc/init.d/99vanir \
    vendor/vanir/proprietary/common/etc/init.d/ZZafterboot:system/etc/init.d/ZZafterboot \
    vendor/vanir/proprietary/common/etc/cron/cron.minutely/00nicetweaks:/system/etc/cron/cron.minutely/00nicetweaks \
    vendor/vanir/proprietary/common/etc/cron/cron.daily/00sqlitespeed:/system/etc/cron/cron.daily/00sqlitespeed

#RNGD MODS
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/xbin/vanirentropy:system/xbin/vanirentropy \
    vendor/vanir/proprietary/common/xbin/vanirrngdd:system/xbin/vanirrngdd
    vendor/vanir/proprietary/common/xbin/rngd:system/xbin/rngd

#LatinIME core files
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/core_dictionaries
    
# T-Mobile theme engine
PRODUCT_PACKAGES += \
       ThemeManager \
       ThemeChooser \
       com.tmobile.themes

PRODUCT_COPY_FILES += \
       vendor/vanir/proprietary/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml
