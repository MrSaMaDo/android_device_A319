#!/bin/bash
 cd ../../../..
 cd packages/apps/Settings
 patch -p1 -b < ../../../device/*/A102/patches/android_settings_developer_info.patch
 git clean -f -d

 cd ../../../system/vold
 patch -p1 < ../../device/*/*/patches/android_system_vold.patch
 
 cd ../sepolicy
 patch -p1 < ../../device/*/*/patches/android_system_sepolicy.patch
 
 cd ../../external/icu
 patch -p1 < ../../device/*/*/patches/android_external_icu.patch

 cd ../../frameworks/av
 #patch -p1 < ../../device/*/*/patches/android_frameworks_av.patch

 cd ../base
 #patch -p1 < ../../device/*/*/patches/android_frameworks_base.patch

 cd ../..
 cd packages/apps/FMRadio
 patch -p1 < ../../../device/*/*/patches/android_packages_apps_FMRadio.patch

 cd ../../../

 echo Successfuly patched!
 echo Now: Pick MT6572 Changes.