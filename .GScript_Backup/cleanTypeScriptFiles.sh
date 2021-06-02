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

    for file in $(find . -type f -name 'typescript' -ls); do
        #echo $file
        if [ -f $file ]; then
            #echo "yes we found $file"
            CHECK1=$(head $file | grep Uptime | awk -F ':' '{print $1}')
            #echo $CHECK1
            if [ $CHECK1 = 'Uptime' ]; then
                bannerSimple "Yes, the file ${file} is redandent and will be removed  " "="
                rm -rf $file
            fi
        fi
    done

}

cleanTypeScriptFilesInDir
