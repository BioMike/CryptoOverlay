# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 python3_{3,4,5} )

inherit distutils-r1

DESCRIPTION="Low level storj protocol reference implementation."
HOMEPAGE="https://github.com/Storj/storjnode"
SRC_URI="https://github.com/Storj/${PN}/archive/v${PV}.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

distutils-r1_src_prepare() {
    sed -i "s/'storjnode.bin'/'*.tests', '*.tests.*', 'tests.*', 'tests', 'storjnode.bin'/g" setup.py || die
}
