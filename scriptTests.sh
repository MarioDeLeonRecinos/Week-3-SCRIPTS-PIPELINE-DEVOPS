#! /bin/sh
# file: scriptTests.sh
FULLPATH=$(pwd)
echo ${FULLPATH}

testFirstScript() {
    "${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/scripts/script_2
    EXITCODE=$(echo $?)
    assertEquals "${EXITCODE}" "0"
}

. shunit2
#. ../shunit2