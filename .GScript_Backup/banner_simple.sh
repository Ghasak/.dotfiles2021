#!/usr/bin/env bash

# Usage: bannerSimple "my title" "*"
function bannerSimple() {
    local msg="${2} ${1} ${2}"
    local edge=$(echo "${msg}" | sed "s/./"${2}"/g")
    echo "${edge}"
    echo "$(tput bold)${msg}$(tput sgr0)"
    echo "${edge}"
    echo
}

# Usage: bannerColor "my title" "red" "*"
function bannerColor() {
    case ${2} in
    black)
        color=0
        ;;
    red)
        color=1
        ;;
    green)
        color=2
        ;;
    yellow)
        color=3
        ;;
    blue)
        color=4
        ;;
    magenta)
        color=5
        ;;
    cyan)
        color=6
        ;;
    white)
        color=7
        ;;
    *)
        echo "color is not set"
        exit 1
        ;;
    esac

    local msg="${3} ${1} ${3}"
    local edge=$(echo "${msg}" | sed "s/./${3}/g")
    tput setaf ${color}
    tput bold
    echo "${edge}"
    echo "${msg}"
    echo "${edge}"
    tput sgr 0
    echo
}

bannerSimple "Hello World" "="
# Usage: bannerColor "my title" "red" "*"
bannerColor "my title" "red" "*"

function counterx() {
    local n=$1
    for ((i = 0; i < n; i++)); do
        # Usage: bannerColor "my title" "red" "*"
        bannerColor "my title ${i}" "yellow" "*"
    done
}

# Testing with looping
counterx 4
