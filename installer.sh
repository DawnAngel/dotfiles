#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

check_and_link () {
    ORIGIN=$1
    DESTINATION=$2

    if [ ! -L ~/${DESTINATION} ]; then
        echo "LINK: ~/${DESTINATION} ✅"
        ln -s ${BASEDIR}/${ORIGIN} ~/${DESTINATION}
    else
        echo "LINK: ~/${DESTINATION} ✘"
    fi
}

check_and_copy () {
    ORIGIN=$1
    DESTINATION=$2

    if [ ! -f ~/${DESTINATION} ]; then
        echo "COPY: ~/${DESTINATION} ✅"
        cp ${BASEDIR}/${ORIGIN} ~/${DESTINATION}
    else
        echo "COPY: ~/${DESTINATION} ✘"
    fi
}

# LINK .vimrc
check_and_link "vimrc" ".vimrc"

# MKDR .bash/
mkdir -p ~/.bash
# COPY .bash/aliases
check_and_copy "bash/aliases" ".bash/aliases"
# COPY .bash/profile_macosx
check_and_copy "bash/profile_macosx" ".bash/profile_macosx"
# COPY .bash/profile_macosx
check_and_copy "bash/profile_linux" ".bash/profile_linux"
# LINK .bash_profile
check_and_link "bash_profile" ".bash_profile"

# LINK git-completion/
check_and_link "git-completion" "git-completion"
# LINK .gitconfig
check_and_link "gitconfig" ".gitconfig"

# MKDR .ssh/
mkdir -p ~/.ssh
# COPY .ssh/config
check_and_copy "ssh/config" ".ssh/config"

# LINK screen-layouts/
check_and_link "screen-layouts" "screen-layouts"