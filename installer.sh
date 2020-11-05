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

# LINK .bash_profile
check_and_link "bash_profile" ".bash_profile"

# MKDR .bash/
mkdir -p ~/.bash
# COPY .bash/aliases
check_and_copy "bash/aliases" ".bash/aliases"
# COPY .bash/profile_macosx
check_and_copy "bash/profile_macosx" ".bash/profile_macosx"
# COPY .bash/profile_macosx
check_and_copy "bash/profile_linux" ".bash/profile_linux"

# MKDR .bash_plugins/
mkdir -p ~/.bash_plugins
# LINK .bash_plugins/screen-layouts/
check_and_link "bash_plugins/screen-layouts" ".bash_plugins/screen-layouts"
# LINK .bash_plugins/git-completion/
check_and_link "bash_plugins/git-completion" ".bash_plugins/git-completion"
# LINK .bash_plugins/kube-completion/
check_and_link "bash_plugins/kube-completion" ".bash_plugins/kube-completion"
# LINK .bash_plugins/make-completion/
check_and_link "bash_plugins/make-completion" ".bash_plugins/make-completion"
# LINK .bash_plugins/ng-completion/
check_and_link "bash_plugins/ng-completion" ".bash_plugins/ng-completion"
# LINK .bash_plugins/npm-completion/
check_and_link "bash_plugins/npm-completion" ".bash_plugins/npm-completion"

# LINK git-templates/
check_and_link "git/git-templates" "git-templates"
# LINK .gitconfig
check_and_link "git/gitconfig" ".gitconfig"
# LINK .gitignore_global
check_and_link "git/gitignore_global" ".gitignore_global"

# MKDR .ssh/
mkdir -p ~/.ssh
# COPY .ssh/config
check_and_copy "ssh/config" ".ssh/config"

