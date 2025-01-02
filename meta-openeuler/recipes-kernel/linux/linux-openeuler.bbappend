FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# add COMPATIBLE_MACHINE
COMPATIBLE_MACHINE = "ast2600"

OPENEULER_KERNEL_CONFIG:ast2600 = "file://config/ast2600/defconfig"

SRC_URI += "file://config/ast2600/fragment.cfg \
            file://0001-aspeed-spi.patch \
            file://0001-dts-fix.patch \
            file://0001-aspeed-net.patch \
"