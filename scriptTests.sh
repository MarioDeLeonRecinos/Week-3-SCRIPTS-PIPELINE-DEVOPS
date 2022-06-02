#! /bin/sh
# file: scriptTests.sh
FULLPATH=$(pwd)
touch "/tmp/backup_script2/prueba.txt"

#chmod -R 755 "${FULLPATH}/scripts"
testFirstScript() {
    "${FULLPATH}"/scripts/script_2
    #"${FULLPATH}"/Week-3-SCRIPTS-PIPELINE-DEVOPS/scripts/script_2
    EXITCODE=$(echo $?)
    assertEquals "${EXITCODE}" "0"
}

. shunit2
#. ../shunit2