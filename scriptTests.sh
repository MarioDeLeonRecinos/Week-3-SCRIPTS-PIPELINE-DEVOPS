#! /bin/sh
# file: scriptTests.sh
FULLPATH=$(pwd)




testSecondScript() {
    $("${FULLPATH}"/tests/script_3_test -u user1 -p user1)
    #"${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/scripts/script_2
    EXITCODE=$(echo $?)
    assertEquals "${EXITCODE}" "0"

    $("${FULLPATH}"/tests/script_3_test -u user1 -d)
    EXITCODE=$(echo $?)
    assertEquals "${EXITCODE}" "0"
    
}
. shunit2