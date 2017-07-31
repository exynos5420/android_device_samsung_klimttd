# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

# Inherit from klimttd device
$(call inherit-product, device/samsung/klimttd/device.mk)

PRODUCT_BRAND := samsung

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit more LineageOS stuff.
$(call inherit-product, vendor/cm/config/telephony.mk)

PRODUCT_NAME := lineage_klimttd
PRODUCT_DEVICE := klimttd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T705C \
    PRODUCT_NAME=klimttd \
    PRODUCT_DEVICE=klimttd \
    TARGET_DEVICE=klimttd
