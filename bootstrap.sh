#!/bin/bash

# this symlinks all the dotfiles (and .vim/) to ~/
# it also symlinks ~/bin for easy updating

# this is safe to run multiple times and will prompt you about anything unclear

# this is a messy edit of alrra's nice work here:
#   https://raw.githubusercontent.com/alrra/dotfiles/master/os/create_symbolic_links.sh
#   it should and needs to be improved to be less of a hack.

# jump down to line ~140 for the start.

#
# utils !!!
#

answer_is_yes() {
    [[ "$REPLY" =~ ^[Yy]$ ]] \
        && return 0 \
        || return 1
}

ask() {
    print_question "$1"
    read
}

ask_for_confirmation() {
    print_question "$1 (y/n) "
    read -n 1
    printf "\n"
}

ask_for_sudo() {

    # Ask for the administrator password upfront
    sudo -v

    # Update existing `sudo` time stamp until this script has finished
    # https://gist.github.com/cowboy/3118588
    while true; do
        sudo -n true
        sleep 60
        kill -0 "$$" || exit
    done &> /dev/null &

}

cmd_exists() {
    [ -x "$(command -v "$1")" ] \
        && printf 0 \
        || printf 1
}

execute() {
    $1 &> /dev/null
    print_result $? "${2:-$1}"
}

get_answer() {
    printf "$REPLY"
}

get_os() {

    declare -r OS_NAME="$(uname -s)"
    local os=""

    if [ "$OS_NAME" == "Darwin" ]; then
        os="osx"
    elif [ "$OS_NAME" == "Linux" ] && [ -e "/etc/lsb-release" ]; then
        os="ubuntu"
    fi

    printf "%s" "$os"

}

is_git_repository() {
    [ "$(git rev-parse &>/dev/null; printf $?)" -eq 0 ] \
        && return 0 \
        || return 1
}

mkd() {
    if [ -n "$1" ]; then
        if [ -e "$1" ]; then
            if [ ! -d "$1" ]; then
                print_error "$1 - a file with the same name already exists!"
            else
                print_success "$1"
            fi
        else
            execute "mkdir -p $1" "$1"
        fi
    fi
}

print_error() {
    # Print output in red
    printf "\e[0;31m  [✖] $1 $2\e[0m\n"
}

print_info() {
    # Print output in purple
    printf "\n\e[0;35m $1\e[0m\n\n"
}

print_question() {
    # Print output in yellow
    printf "\e[0;33m  [?] $1\e[0m"
}

print_result() {
    [ $1 -eq 0 ] \
        && print_success "$2" \
        || print_error "$2"

    [ "$3" == "true" ] && [ $1 -ne 0 ] \
        && exit
}

print_success() {
    # Print output in green
    printf "\e[0;32m  [✔] $1\e[0m\n"
}

#
# actual symlink stuff
#

# finds all *.symlink directories in this folder
declare -a DIRS_TO_SYMLINK=$(find . -maxdepth 2 -type d -name "*.symlink" )
Dirs_TO_SYMLINK="$DIRS_TO_SYMLINK"

# finds all *.symlink files in this folder
declare -a FILES_TO_SYMLINK=$(find . -maxdepth 1 -type f -name "*.symlink" )
Files_TO_SYMLINK="$FILES_TO_SYMLINK"


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    local i=""
    local sourceFile=""
    local targetFile=""
    local sourceDir=""
    local targetDir=""

    for i in ${Dirs_TO_SYMLINK[@]}; do


	base=`basename \"${i%.*}`
	echo "base:  ${base}"
		
        sourceDir="$(pwd)/$i"

	

	if [ "$base" ==  "User" ]; then
	    targetDir="${HOME}/.config/Code/${base}"
	else
            targetDir="$HOME/.config/`basename \"${i%.*}\"`"	    
	fi


	echo "source: $sourceDir"
	echo "target: $targetDir"

	
        if [ -e "$targetDir" ]; then
            if [ "$(readlink "$targetDir")" != "$sourceDir" ]; then

                ask_for_confirmation "'$targetDir' already exists, do you want to overwrite it?"
                if answer_is_yes; then
                    rm -rf "$targetDir"
                    execute "ln -fs $sourceDir $targetDir" "$targetDir → $sourceDir"
                else
                    print_error "$targetDir → $sourceDir"
                fi
            else
                print_success "$targetDir → $sourceDir"
            fi
        else
            execute "ln -fs $sourceDir $targetDir" "$targetDir → $sourceDir"
        fi
    done

    for i in ${FILES_TO_SYMLINK[@]}; do

        sourceFile="$(pwd)/$i"
        targetFile="$HOME/`basename \"${i%.*}\"`"

	echo "source: $sourceFile"
	echo "target: $targetFile"

        if [ -e "$targetFile" ]; then
            if [ "$(readlink "$targetFile")" != "$sourceFile" ]; then

                ask_for_confirmation "'$targetFile' already exists, do you want to overwrite it?"
                if answer_is_yes; then
                    rm -rf "$targetFile"
                    execute "ln -fs $sourceFile $targetFile" "$targetFile → $sourceFile"
                else
                    print_error "$targetFile → $sourceFile"
                fi

            else
                print_success "$targetFile → $sourceFile"
            fi
        else
            execute "ln -fs $sourceFile $targetFile" "$targetFile → $sourceFile"
        fi

    done
}

main
