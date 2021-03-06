# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2018-present Frank Hartung (supervisedthinking (@) gmail.com)

PKG_NAME="dosbox-sdl2"
PKG_VERSION="0dd982477bff268c10558004dd1671e183b1a10f" # 0.74-3 / r4250
PKG_SHA256="2737817cd45889b21a4cef1e5fbd0782ffb5972f29bd3eaf7c3b8cc99cd9bac0"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/moralrecordings/dosbox"
PKG_URL="https://github.com/moralrecordings/dosbox/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain linux glibc glib systemd dbus alsa-lib SDL2-system SDL2_net SDL_sound libpng zlib libvorbis-system flac-system libogg-system fluidsynth-system munt"
PKG_LONGDESC="This is an enhanced fork of DOSBox. It is currently in sync with revision 4156."
PKG_TOOLCHAIN="autotools"
PKG_BUILD_FLAGS="+lto"

configure_package() {
  # Displayserver Support
  if [ "${DISPLAYSERVER}" = "x11" ]; then
    PKG_DEPENDS_TARGET+=" xorg-server unclutter-xfixes"
  fi

  if [ "${OPENGL_SUPPORT}" = "yes" ]; then
    PKG_DEPENDS_TARGET+="  ${OPENGL} dosbox-sdl2-shaders glew-cmake"
  fi
}

pre_configure_target() {
  # Clean up build directory
  cd ${PKG_BUILD}
  rm -rf .${TARGET_NAME}

  PKG_CONFIGURE_OPTS_TARGET="--prefix=/usr \
                             --enable-core-inline \
                             --enable-dynrec \
                             --enable-unaligned_memory \
                             --with-sdl-prefix=${SYSROOT_PREFIX}/usr"
  # Define target CPU arch
  case ${TARGET_CPU} in
    arm1176jzf-s)
      PKG_CONFIGURE_OPTS_TARGET+=" --host=armv6l"
      ;;
    cortex-a7|cortex-a9|*cortex-a53)
      PKG_CONFIGURE_OPTS_TARGET+=" --host=armv7l"
      ;;
    *)
      PKG_CONFIGURE_OPTS_TARGET+=" --host=${ARCH}"
      ;;
  esac
}

pre_make_target() {
  # Define DOSBox version
  sed -e "s/SVN/SDL2/" -i ${PKG_BUILD}/config.h
}

post_makeinstall_target() {
  # Create config directory & install config
  mkdir -p ${INSTALL}/usr/config/dosbox
  cp -a ${PKG_DIR}/scripts/* ${INSTALL}/usr/bin/
  cp -a ${PKG_DIR}/config/*  ${INSTALL}/usr/config/dosbox/

  # Enable OpenGL output if supported
  if [ "${OPENGL_SUPPORT}" = "yes" ]; then
    sed -e "s/output=texture/output=opengl/" -i ${INSTALL}/usr/config/dosbox/dosbox-SDL2*.conf
  fi
}
