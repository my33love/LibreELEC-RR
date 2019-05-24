# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2018-present Frank Hartung (supervisedthinking (@) gmail.com)

PKG_NAME="lr-overlay-borders"
PKG_VERSION="9aceca2dd514c589a57d40086557b804851aafcf"
PKG_SHA256="f78ca10f26a960c902440512a4fa790b411551b1710ae64a3a1418af05fede58"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/libretro/overlay-borders"
PKG_URL="https://github.com/libretro/overlay-borders/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="A place for collecting decorative/cosmetic overlays for use with RetroArch."
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  PKG_OVERLAY_INSTALL_PATH=$INSTALL/usr/share/retroarch/overlay/borders/systems
  mkdir -p ${PKG_OVERLAY_INSTALL_PATH}

  #Nintendo NES
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/NintendoEntertainmentSystem-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/NintendoEntertainmentSystem-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #Nintendo SNES
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/NintendoSuperNintendo-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/NintendoSuperNintendo-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #Nintendo SNES
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/NintendoSNES-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/NintendoSNES-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #Nintendo N64
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/NintendoN64-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/NintendoN64-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #Nintendo GameCube
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/NintendoGameCube-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/NintendoGameCube-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #Nintendo GameBoy Color
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/NintendoGameBoyColorNoir-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/NintendoGameBoyColorNoir-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #Sega Genesis/Megadrive
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/SegaMegadrive-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/SegaMegadrive-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #Sega Saturn
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/SegaSaturnEU-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/SegaSaturnEU-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #Sega Dreamcast
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/SegaDreamcast-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/SegaDreamcast-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #Sony Playstation
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/SonyPlaystation-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/SonyPlaystation-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #MAME
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/Mame-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/Mame-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #Bandai Wonderswan
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/BandaiWonderSwanColor-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/BandaiWonderSwanColor-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #IBM
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/IBM-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/IBM-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #Sinclair ZXSpectrum
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/SinclairZXSpectrum-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/SinclairZXSpectrum-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #Amiga
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/Amiga-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/Amiga-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #ScummVM
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/ScummVM-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/ScummVM-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #Commodore64
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/Commodore64-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/Commodore64-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #Vierge
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/Vierge-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/Vierge-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}

  #Vierge Vertical
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/ViergeVertical-nyny77.cfg" ${PKG_OVERLAY_INSTALL_PATH}
  cp "${PKG_BUILD}/16x9 Collections/NyNy77 1080 Bezel/ViergeVertical-nyny77.png" ${PKG_OVERLAY_INSTALL_PATH}
}
