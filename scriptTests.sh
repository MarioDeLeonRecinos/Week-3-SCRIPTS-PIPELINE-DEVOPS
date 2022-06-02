#! /bin/sh
# file: scriptTests.sh
FULLPATH=$(pwd)

#chmod -R 777 "${FULLPATH}/scripts"
testFirstScript() {
    ls /tmp/backup_script2
    "${FULLPATH}"/scripts/script_2
    #"${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/scripts/script_2
    EXITCODE=$(echo $?)
    assertEquals "${EXITCODE}" "0"
}

. shunit2
#. ../shunit2