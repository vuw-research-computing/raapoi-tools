#!/bin/bash

# Build modules for perl and install on NFS
#  (the NFS dir is added to @INC by sitecustomize.pl -- see `man perlrun`)

DATE=$(date +'%m%d%Y%H%M')
MX='/bin/mailx -r no-reply@vuw.ac.nz'
ADMIN_EMAIL='wes.harrell@vuw.ac.nz'
LIB_BASE_DIR='/home/software/apps/local/lib/perl'

# Desired target perl version
BUILD_VER="$1"

# prevent our sitecustomize.pl from loading modules from the prior build RT#248677
export HMDC_PERL_OMIT_SITECUSTOMIZE=1

###
### Functions
###

function cleanup {
	DIR=$1
        # recursively remove every dir older than 20 days except what's linked from "current"
	find ${DIR} -maxdepth 1 -mtime +20 -type d -not -path ${DIR}/$(/bin/readlink ${DIR}/current) -exec rm -rf {} \;
}

function build_perl_modules {
    LIB_DIR=$1
    WRAPPER_SHELL=$2
    CPANM=$3
    MOD_FILE=$4

    LOG="${LIB_DIR}/${DATE}-cpanm.log"
    echo "Log: ${LOG}"

    BUILD_DIR="${LIB_DIR}/${DATE}"
    mkdir ${BUILD_DIR} && cat ${MOD_FILE} | ${WRAPPER_SHELL} "${CPANM} --notest -l ${BUILD_DIR} --mirror http://cpan.catalyst.net.nz/CPAN/ --mirror-only --auto-cleanup 2" >${LOG} 2>&1

    if [ $? -eq 0 ]; then
    	echo "[SUCCESS] CPANM compiled all Perl ${BUILD_VER} modules."
    	cd ${LIB_DIR}
    	ln -sv ${DATE} current_new
    	mv -Tfv current_new current
    	echo "CPANM compiled modules successfully. Linked ${DATE} to current."
        # remove old builds
        cleanup ${LIB_DIR}
    else
    	echo "[FAIL] CPANM failed to compile all Perl ${BUILD_VER} modules, see ${LOG} for detail."
      #  echo "[FAIL] CPANM failed to compile all Perl ${BUILD_VER} modules, see ${LOG} for detail." | $MX -s "Perl ${BUILD_VER} module build failure" ${ADMIN_EMAIL}
    fi
}

###
### Main
###

case $BUILD_VER in
    5.16)
    build_perl_modules \
        "${LIB_BASE_DIR}/${BUILD_VER}" \
        "/bin/bash -c" \
        "/bin/cpanm" \
        "/home/software/tools/admin/etc/perl-mod.txt"
    ;;
    *)
    echo "Acceptable arguments are 5.16 or some possible future version?"
    exit 1
    ;;
esac
