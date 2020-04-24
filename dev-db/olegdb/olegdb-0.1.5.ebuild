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

S="${WORKDIR}/olegdb-v${PV}"

PATCHES=()

DEPEND=">=dev-lang/go-1.13"
RDEPEND="${DEPEND}"
BDEPEND=""