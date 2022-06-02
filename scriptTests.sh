#! /bin/sh
# file: scriptTests.sh
FULLPATH=$(pwd)

#chmod -R 777 "${FULLPATH}/scripts"
testFirstScript() {
    $("${FULLPATH}"/scripts/script_2_test -d prueba.txt)
    #"${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/scripts/script_2
    EXITCODE=$(echo $?)
    assertEquals "${EXITCODE}" "0"

    $("${FULLPATH}"/scripts/script_2_test)
    EXITCODE=$(echo $?)
    assertEquals "${EXITCODE}" "0"
    
}

. shunit2
#. ../shunit2