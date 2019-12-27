Device configuration for Sony Xperia XZ1 (poplar)
========================================================

Description
-----------

This repository is for LineageOS 17.0 on Sony Xperia XZ1 (poplar).

How to build LineageOS
----------------------

* Make a workspace:

        mkdir -p ~/lineageos
        cd ~/lineageos

* Initialize the repo:

        repo init -u git://github.com/LineageOS/android.git -b lineage-17.0

* Create a local manifest:

        vim .repo/local_manifests/roomservice.xml

        <?xml version="1.0" encoding="UTF-8"?>
        <manifest>
            <!-- SONY -->
            <project name="derfelot/android_kernel_sony_msm8998" path="kernel/sony/msm8998" remote="github" revision="lineage-17.0" />
            <project name="cryptomilk/android_device_sony_common-treble" path="device/sony/common-treble" remote="github" revision="TESTING_17.0" />
            <project name="cryptomilk/android_device_sony_yoshino" path="device/sony/yoshino" remote="github" revision="TESTING_17.0" />
            <project name="derfelot/android_device_sony_poplar" path="device/sony/poplar" remote="github" revision="TESTING_17.0" />

            <!-- Pinned blobs for poplar -->
            <project name="derfelot/android_vendor_sony_poplar" path="vendor/sony/poplar" remote="github" revision="lineage-17.0" />
        </manifest>

* Sync the repo:

        repo sync

* Extract vendor blobs

        cd device/sony/poplar
        ./extract-files.sh

* Setup the environment

        source build/envsetup.sh
        lunch lineage_poplar-userdebug

* Build LineageOS

        make -j7 bacon
