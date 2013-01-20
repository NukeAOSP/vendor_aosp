## Nuke Version prop ##
DATE = $(shell date -u +%Y%m%d)

# For System Information & Build zip name
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nuke.version=$(TARGET_PRODUCT)-1.4 \
    ro.modversion=$(TARGET_PRODUCT)_1.4_$(DATE)
