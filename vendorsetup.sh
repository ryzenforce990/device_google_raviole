echo 'Starting to clone stuffs needed to build for oriole'

# Device common
echo 'Cloning common device tree'

git clone https://github.com/Finnaib/device_google_gs201.git -b aosp-14 device/google/gs201
git clone https://github.com/Finnaib/device_google_gs101.git -b aosp-14 device/google/gs101
git clone https://github.com/Finnaib/device_google_gs-common.git -b aosp-14 device/google/gs-common

# Kernel
echo 'Cloning kernel tree'
git clone --depth=1 --recursive https://github.com/Finnaib/kernel_google_gs201.git -b lineage-21 kernel/google/gs201/private/gs-google

# Vendor
echo 'Cloning vendor tree'
git clone https://github.com/Finnaib/proprietary_vendor_google_oriole.git -b lineage-21 vendor/google/oriole

# pixel_parts
echo 'Cloning pixelparts'
git clone https://github.com/Evolution-X-Devices/packages_apps_PixelParts.git -b udc packages/apps/PixelParts

# BCR
echo 'Cloning bcr'
rm -rf vendor/bcr && git clone --depth=1 https://github.com/kenway214/vendor_bcr.git -b main vendor/bcr

#hardware/google
rm -rf hardware/google/pixel && git clone https://github.com/LineageOS/android_hardware_google_pixel -b lineage-21.0 hardware/google/pixel

rm -rf hardware/google/graphics/common && git clone https://github.com/LineageOS/android_hardware_google_graphics_common -b lineage-21.0 hardware/google/graphics/common

rm -rf hardware/google/pixel-sepolicy && git clone https://github.com/LineageOS/android_hardware_google_pixel-sepolicy -b lineage-21.0 hardware/google/pixel-sepolicy

rm -rf hardware/google/gchips && git clone https://github.com/LineageOS/android_hardware_google_gchips -b lineage-21.0 hardware/google/gchips