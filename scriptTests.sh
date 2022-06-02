#! /bin/sh
# file: scriptTest.sh
FULLPATH=$(pwd)

testScripts() {
    $("${FULLPATH}"/tests/script_2_test -d prueba.txt)
    #$("${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/scripts/script_2 -d /home/mario/github/Week-3-DEVOPS/prueba.txt)
    EXITCODE=$(echo $?)
    assertEquals "${EXITCODE}" "0"

    $("${FULLPATH}"/tests/script_2_test)
    #$("${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/scripts/script_2)
    EXITCODE=$(echo $?)
    assertEquals "${EXITCODE}" "0"
    
    $("${FULLPATH}"/tests/script_3_test -u user1 -p user1)
    #$("${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/scripts/script_3 -u user1 -p user1)
    EXITCODE=$(echo $?)
    assertEquals "${EXITCODE}" "0"

    $("${FULLPATH}"/tests/script_3_test -u user1 -d)
    #$("${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/scripts/script_3 -u user1 -d)
    EXITCODE=$(echo $?)
    assertEquals "${EXITCODE}" "0"
}

. shunit2