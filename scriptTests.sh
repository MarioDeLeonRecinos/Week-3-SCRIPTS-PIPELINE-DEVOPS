#! /bin/sh
# file: scriptTest.sh
FULLPATH=$(pwd)

testScripts() {
    eval "$("${FULLPATH}"/tests/script_2_test -d prueba.txt)"
    #eval "$("${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/tests/script_2_test -d /home/mario/github/Week-3-DEVOPS/prueba.txt)"
    #$("${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/scripts/script_2 -d /home/mario/github/Week-3-DEVOPS/prueba.txt)
    EXITCODE=$?
    assertEquals "${EXITCODE}" "0"

    eval "$("${FULLPATH}"/tests/script_2_test)"
    #eval "$("${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/tests/script_2_test)"
    #$("${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/scripts/script_2)
    EXITCODE=$?
    assertEquals "${EXITCODE}" "0"
    
}

testSecondScript(){
    eval "$("${FULLPATH}"/tests/script_3_test -u user1 -p user1)"
    #eval "$("${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/tests/script_3_test -u user1 -p user1)"
    #$("${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/scripts/script_3 -u user1 -p user1)
    EXITCODE=$?
    assertEquals "${EXITCODE}" "0"

    eval "$("${FULLPATH}"/tests/script_3_test -u user1 -d)"
    #eval "$("${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/tests/script_3_test -u user1 -d)"
    #$("${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/scripts/script_3 -u user1 -d)
    EXITCODE=$?
    assertEquals "${EXITCODE}" "0"
}

. shunit2