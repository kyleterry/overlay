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
	"${FILESDIR}/destdir-0.1.6.patch"
)

DEPEND=">=dev-lang/go-1.13"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	emake liboleg olegdb || die "emake failed"
}

src_install() {
	emake PREFIX="${D}/usr" install
}
