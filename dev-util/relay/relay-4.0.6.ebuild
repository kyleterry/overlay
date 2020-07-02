# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
EAPI=7

DESCRIPTION="CLI utility for interacting with relay.sh workflows"
HOMEPAGE="https://github.com/puppetlabs/relay"
SRC_URI="https://github.com/puppetlabs/relay/archive/v${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

S="${WORKDIR}/relay-${PV}"

DEPEND=">=dev-lang/go-1.13"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	go build -o relay ./cmd/relay
}

src_install() {
	dobin relay
}
