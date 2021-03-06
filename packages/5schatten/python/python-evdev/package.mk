# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2018-present Frank Hartung (supervisedthinking (@) gmail.com)

PKG_NAME="python-evdev"
PKG_VERSION="91710cd7b86573f9bdb139ff9e9cfce212c94879" #1.2.0
PKG_SHA256="38f514f484d6fc6d25259643c8284c0d0b418dc84ca8bfa310fa707b7710c81b"
PKG_LICENSE="OSS"
PKG_SITE="https://github.com/gvalkov/python-evdev"
PKG_URL="https://github.com/gvalkov/python-evdev/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python2 distutilscross:host"
PKG_LONGDESC="This package provides bindings to the generic input event interface in Linux. The evdev interface serves the purpose of passing events generated in the kernel directly to userspace through character devices that are typically located in /dev/input/."
PKG_TOOLCHAIN="manual"

pre_make_target() {
  export PYTHONXCPREFIX="${SYSROOT_PREFIX}/usr"
  export LDFLAGS="${LDFLAGS} -L${SYSROOT_PREFIX}/usr/lib -L${SYSROOT_PREFIX}/lib"
  export LDSHARED="${CC} -shared"
  find . -name setup.py -exec sed -i "s:/usr/include/linux/input.h :${SYSROOT_PREFIX}/usr/include/linux/input.h:g" \{} \;
  find . -name setup.py -exec sed -i "s:/usr/include/linux/input-event-codes.h :${SYSROOT_PREFIX}/usr/include/linux/input-event-codes.h:g" \{} \;
}

make_target() {
  python setup.py build --cross-compile \
  build_ecodes --evdev-headers ${SYSROOT_PREFIX}/usr/include/linux/input.h:${SYSROOT_PREFIX}/usr/include/linux/input-event-codes.h
}

makeinstall_target() {
  python setup.py install --root=${INSTALL} --prefix=/usr
}

post_makeinstall_target() {
  find ${INSTALL}/usr/lib/python*/site-packages/  -name "*.py" -exec rm -rf {} ";"
}
