#!/bin/bash

echo " Checking if there is android smartphone "
adb devices | grep -w device > /dev/null

if [ $? -ne 0 ]
then
    echo "Error: No Android device detected. Please connect your device and try again."
    exit 1
fi

echo " Disable animations "
adb shell settings put global window_animation_scale 0.0
adb shell settings put global transition_animation_scale 0.0 
adb shell settings put global animator_duration_scale 0.0

echo " Clearing cache and data "
for package in $(adb shell pm list packages -f | sed -e "s/.*=//" -e "s/\r//"); do
    echo "Clearing cache for $package ..."
    adb shell pm clear "${package}"
done 

echo " Clearing cache and data "
for package in $(adb shell pm list packages -f | sed -e "s/.*=//" -e "s/\r//"); do
    echo "Clearing cache for $package ..."
    adb shell pm clear "${package}"
done 

echo " Removing Google Apps "
adb shell pm uninstall --user 0 com.google.android.apps.docs.editors.docs
adb shell pm uninstall --user 0 com.google.android.apps.docs.editors.sheets
adb shell pm uninstall --user 0 com.google.android.apps.docs.editors.slides
adb shell pm uninstall --user 0 com.google.android.apps.docs
adb shell pm uninstall --user 0 com.google.android.gm
adb shell pm uninstall --user 0 com.google.android.googlequicksearchbox
adb shell pm uninstall --user 0 com.google.android.music
adb shell pm uninstall --user 0 com.android.vending
adb shell pm uninstall --user 0 com.google.android.videos
adb shell pm uninstall --user 0 com.google.android.apps.maps
adb shell pm uninstall --user 0 com.google.android.apps.tachyon
adb shell pm uninstall --user 0 com.google.android.apps.photos
adb shell pm uninstall --user 0 com.google.android.youtube
adb shell pm uninstall --user 0 com.android.chrome
adb shell pm uninstall --user 0 com.google.android.apps.messaging
adb shell pm uninstall --user 0 com.google.android.apps.restore
adb shell pm uninstall --user 0 com.google.android.apps.tachyon
adb shell pm uninstall --user 0 com.google.android.feedback
adb shell pm uninstall --user 0 com.google.android.marvin.talkback
adb shell pm uninstall --user 0 com.google.android.music
adb shell pm uninstall --user 0 com.google.android.onetimeinitializer
adb shell pm uninstall --user 0 com.google.android.partnersetup
adb shell pm uninstall --user 0 com.google.android.printservice.recommendation
adb shell pm uninstall --user 0 com.google.android.syncadapters.contacts
adb shell pm uninstall --user 0 com.google.android.syncadapters.calendar

echo " Removinge Facebook,Amazon,Books  Apps "
adb shell pm uninstall --user 0 com.facebook.katana
adb shell pm uninstall --user 0 com.facebook.services
adb shell pm uninstall --user 0 com.mediatek.wfo.impl
adb shell pm uninstall --user 0 com.swiftkey.swiftkeyconfigurator
adb shell pm uninstall --user 0 com.facebook.system
adb shell pm uninstall --user 0 com.facebook.appmanager
adb shell pm uninstall --user 0 com.amazon.mShop.android.shopping
adb shell pm uninstall --user 0 com.amazon.appmanager
adb shell pm uninstall --user 0 com.booking
adb shell pm uninstall --user 0 com.touchtype.swiftkey

echo " Removing Huawei Apps "
adb shell pm uninstall --user 0 com.huawei.hifolder
adb shell pm uninstall --user 0 com.huawei.gameassistant
adb shell pm uninstall --user 0 com.huawei.appmarket
adb shell pm uninstall --user 0 com.huawei.hicloud
adb shell pm uninstall --user 0 com.hicloud.android.clone
adb shell pm uninstall --user 0 com.huawei.parentcontrol
adb shell pm uninstall --user 0 com.huawei.imedia.sws
adb shell pm uninstall --user 0 com.huawei.featurelayer.featureframework
adb shell pm uninstall --user 0 com.huawei.featurelayer.sharedfeature.map
adb shell pm uninstall --user 0 com.huawei.hwid
adb shell pm uninstall --user 0 com.huawei.himovie.overseas
adb shell pm uninstall --user 0 com.huawei.android.pushagent
adb shell pm uninstall --user 0 com.huawei.screenrecorder
adb shell pm uninstall --user 0 com.huawei.HwMultiScreenShot
adb shell pm uninstall --user 0 com.huawei.android.hwouc
adb shell pm uninstall --user 0 com.huawei.phoneservice
adb shell pm uninstall --user 0 com.huawei.android.thememanager
adb shell pm uninstall --user 0 com.huawei.android.tips
adb shell pm uninstall --user 0 com.huawei.android.totemweather
adb shell pm uninstall --user 0 com.huawei.android.wfdft
adb shell pm uninstall --user 0 com.hicloud.android.clone
adb shell pm uninstall --user 0 com.huawei.android.chr
adb shell pm uninstall --user 0 com.huawei.android.hsf
adb shell pm uninstall --user 0 com.huawei.android.pushagent
adb shell pm uninstall --user 0 com.huawei.android.tips
adb shell pm uninstall --user 0 com.huawei.android.totemweather
adb shell pm uninstall --user 0 com.huawei.android.wfdft
adb shell pm uninstall --user 0 com.huawei.bluetooth
adb shell pm uninstall --user 0 com.huawei.contacts.sync
adb shell pm uninstall --user 0 com.huawei.gameassistant
adb shell pm uninstall --user 0 com.huawei.himovie.overseas
adb shell pm uninstall --user 0 com.huawei.hiviewtunnel
adb shell pm uninstall --user 0 com.huawei.hwdetectrepair
adb shell pm uninstall --user 0 com.huawei.hwstartupguide
adb shell pm uninstall --user 0 com.huawei.iaware
adb shell pm uninstall --user 0 com.huawei.parentcontrol
adb shell pm uninstall --user 0 com.huawei.phoneservice
adb shell pm uninstall --user 0 com.huawei.powergenie
adb shell pm uninstall --user 0 com.huawei.trustagent
adb shell pm uninstall --user 0 com.huawei.camera
adb shell pm uninstall --user 0 com.huawei.hidisk
adb shell pm uninstall --user 0 com.huawei.android.FMRadio
adb shell pm uninstall --user 0 com.huawei.hiview
adb shell pm uninstall --user 0 com.huawei.android.internal.app
adb shell pm uninstall --user 0 com.huawei.systemserver
adb shell pm uninstall --user 0 com.huawei.android.hwaps
adb shell pm uninstall --user 0 com.huawei.mmitest
adb shell pm uninstall --user 0 com.huawei.systemmanager
adb shell pm uninstall --user 0 com.huawei.securitymgr
adb shell pm uninstall --user 0 com.huawei.android.projectmenu
adb shell pm uninstall --user 0 com.huawei.KoBackup 
adb shell pm uninstall --user 0 com.huawei.printservice
adb shell pm uninstall --user 0 com.huawei.numberidentity
adb shell pm uninstall --user 0 com.huawei.android.hwupgradeguide

echo " Removing Android Apps "
adb shell pm uninstall --user 0 com.android.bluetoothmidiservice
adb shell pm uninstall --user 0 com.android.calllogbackup
adb shell pm uninstall --user 0 com.android.chrome
adb shell pm uninstall --user 0 com.android.dreams.phototable
adb shell pm uninstall --user 0 com.android.egg
adb shell pm uninstall --user 0 com.android.mediacenter
adb shell pm uninstall --user 0 com.android.providers.partnerbookmarks
adb shell pm uninstall --user 0 com.android.providers.calendar
adb shell pm uninstall --user 0 com.android.calendar
adb shell pm uninstall --user 0 com.android.calculator2
adb shell pm uninstall --user 0 com.android.deskclock
adb shell pm uninstall --user 0 com.android.gallery3d
adb shell pm uninstall --user 0 com.example.android.notepad
adb shell pm uninstall --user 0 com.android.imedia.syncplay
adb shell pm uninstall --user 0 com.android.soundrecorder
adb shell pm uninstall --user 0 com.android.email
adb shell pm uninstall --user 0 com.android.storagemanager
adb shell pm uninstall --user 0 com.android.contacts
adb shell pm uninstall --user 0 com.android.providers.contacts
adb shell pm uninstall --user 0 com.android.printspooler
adb shell pm uninstall --user 0 com.android.documentsui
adb shell pm uninstall --user 0 com.android.emergency
adb shell pm uninstall --user 0 com.android.bookmarkprovider
adb shell pm uninstall --user 0 com.android.stk

echo " Downloading fdroid "
wget https://f-droid.org/F-Droid.apk

echo " Install fdroid "
adb install F-Droid.apk 

# Waiting whene apps are uninstalled
sleep 10;

echo " Clearing cache and data "
for package in $(adb shell pm list packages -f | sed -e "s/.*=//" -e "s/\r//"); do
    echo "Clearing cache for $package ..."
    adb shell pm clear "${package}"
done

echo " Removing empty directories "
adb shell find /sdcard/ -type d -empty -delete 

echo "rebooting device"
adb reboot 

# End of Script 
echo done 
