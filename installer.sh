#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
if [ ! -L ~/.vimrc ]
then
    echo 'LINK: ~/.vimrc [OK]'
    ln -s ${BASEDIR}/vimrc ~/.vimrc
else
    echo 'LINK: ~/.vimrc [Already exists]'
fi

# bash_profile
if [ ! -L ~/.bash_profile ]
then
    echo 'LINK: ~/.bash_profile [OK]'
    ln -s ${BASEDIR}/bash_profile ~/.bash_profile
else
    echo 'LINK: ~/.bash_profile [Already exists]'
fi

# bash_aliases
if [ ! -f ~/.bash_aliases ]
then
    echo 'COPY: ~/.bash_aliases [OK]'
    cp ${BASEDIR}/bash_aliases ~/.bash_aliases
else
    echo 'COPY: ~/.bash_aliases [Already exists]'
fi

# git config
if [ ! -L ~/.gitconfig ]
then
    echo 'LINK: ~/.gitconfig [OK]'
    ln -s ${BASEDIR}/gitconfig ~/.gitconfig
else
    echo 'LINK: ~/.gitconfig [Already exists]'
fi

# git completion
if [ ! -L ~/git-completion ]
then
    echo 'LINK: ~/git-completion/ [OK]'
    ln -s ${BASEDIR}/git-completion ~/git-completion
else
    echo 'LINK: ~/git-completion/ [Already exists]'
fi

# ssh
if [ ! -f ~/.ssh/config ]
then
    echo 'COPY: ~/.ssh/config [OK]'
    mkdir -p ~/.ssh
    cp ${BASEDIR}/ssh/config ~/.ssh/config
else
    echo 'COPY: ~/.ssh/config [Already exists]'
fi

# screen layouts
if [ ! -L ~/screen-layouts ]
then
    echo 'LINK: ~/screen-layouts/ [OK]'
    ln -s ${BASEDIR}/screen-layouts ~/screen-layouts
else
    echo 'LINK: ~/screen-layouts/ [Already exists]'
fi