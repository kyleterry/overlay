# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
EAPI=7

DESCRIPTION="OlegDB nosql database"
HOMEPAGE="https://olegdb.org"
SRC_URI="https://github.com/infoforcefeed/OlegDB/archive/v.${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

S="${WORKDIR}/OlegDB-v.${PV}"

PATCHES=(
	"${FILESDIR}/fix-build-0.1.6.patch"
)

DEPEND=">=dev-lang/go-1.13"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin olegdb
	dolib.so "liboleg.so.${PV}"
	dosym "liboleg.so.${PV}" "/usr/$(get_libdir)/liboleg.so.0"
	dosym "liboleg.so.${PV}" "/usr/$(get_libdir)/liboleg.so"
}
