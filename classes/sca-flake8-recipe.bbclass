## SPDX-License-Identifier: BSD-2-Clause
## Copyright (c) 2019, Konrad Weihmann

inherit sca-flake8-core
inherit sca-global
inherit sca-tracefiles

inherit python3-dir

## Add ids to suppress on a recipe level
SCA_FLAKE8_EXTRA_SUPPRESS ?= ""
## Add ids to lead to a fatal on a recipe level
SCA_FLAKE8_EXTRA_FATAL ?= ""

do_sca_flake8_core[doc] = "Lint python code with flake8"
do_sca_flake8_core_report[doc] = "Report findings from do_sca_flake8_core"
addtask do_sca_flake8_core after do_compile before do_sca_tracefiles
addtask do_sca_flake8_core_report after do_sca_tracefiles before do_sca_deploy

DEPENDS += "sca-recipe-flake8-rules-native"
