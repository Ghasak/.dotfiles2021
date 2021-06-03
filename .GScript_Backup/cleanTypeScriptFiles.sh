#!/usr/bin/env bash

function bannerSimple() {
    local msg="${2} ${1} ${2}"
    local edge=$(echo "${msg}" | sed "s/./"${2}"/g")
    echo "${edge}"
    echo "$(tput bold)${msg}$(tput sgr0)"
    echo "${edge}"
    echo
}

function cleanTypeScriptFilesInDir() {
    cat <<EOF
        This is a script will search for redandent file and clean it which match
        a pattern given inside top of the file that we want to clean
            Parameter: It asks you for the word located in the top of the file to
            identify and not remove other necessary similar files.
EOF
    bannerSimple " Running the script " "*"
    read -p "Which file you wish to clean from the directory [Default:Uptime] ... " SEARCHING_WORD
    SEARCHING_WORD=$(echo "${SEARCHING_WORD:=Uptime}")
    bannerSimple " [O] Will remove the following files " "+"
    local NUMBER_OF_FILES=0
    for file in $(find . -type f -name 'typescript' -ls); do
        if [ -f $file ]; then
            CHECK1=$(head $file | grep $SEARCHING_WORD | awk -F ':' '{print $1}')
            let NUMBER_OF_FILES=NUMBER_OF_FILES+1
            echo "[X] => $NUMBER_OF_FILES : $file"
            if [ $CHECK1 = 'Uptime' ]; then
                rm -rf $file
            fi
        fi
    done

}

cleanTypeScriptFilesInDir
