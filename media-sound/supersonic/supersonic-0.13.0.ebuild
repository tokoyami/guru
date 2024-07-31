# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop go-module xdg

DESCRIPTION="A lightweight and full-featured cross-platform desktop client"
HOMEPAGE="https://github.com/dweymouth/supersonic"
SRC_URI="https://github.com/dweymouth/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" https://gentoo.kropotkin.rocks/go-pkgs/${P}-vendor.tar.xz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	media-video/mpv[libmpv]
	x11-libs/libXcursor
	x11-libs/libXi
	x11-libs/libXinerama
"

RDEPEND="${DEPEND}"

src_compile() {
	ego build
}

src_install() {
	dobin supersonic
	sed -i 's/supersonic-desktop/supersonic/g' "res/${PN}-desktop.desktop"
	domenu "res/${PN}-desktop.desktop"
	local x
	for x in 128 256 512; do
		newicon -s ${x} res/appicon-${x}.png supersonic.png
	done
}
