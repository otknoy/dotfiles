#!/bin/sh

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O git-prompt.sh
ln -sf `pwd`/git-prompt.sh ~/.git-prompt.sh

ln -sf `pwd`/dot_bash_profile ~/.bash_profile

ln -sf `pwd`/dot_inputrc ~/.inputrc
ln -sf `pwd`/dot_tmux.conf ~/.tmux.conf
ln -sf `pwd`/dot_gitconfig ~/.gitconfig
