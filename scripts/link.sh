#!/bin/sh
set -eux

link_file() {
    local src="$1"
    local dist="$2"

    local dist_dir=$(dirname "$dist")
    if [ ! -d "$dist_dir" ]; then
        mkdir -p "$dist_dir"
    fi

    ln -snf "$src" "$dist"
}

DOT_CONFIG_DIR="$(pwd)/config"

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ./config/git-prompt.sh
link_file "${DOT_CONFIG_DIR}/git-prompt.sh"    ~/.git-prompt.sh
link_file "${DOT_CONFIG_DIR}/dot_bash_profile" ~/.bash_profile
link_file "${DOT_CONFIG_DIR}/dot_inputrc"      ~/.inputrc
link_file "${DOT_CONFIG_DIR}/dot_tmux.conf"    ~/.tmux.conf
link_file "${DOT_CONFIG_DIR}/dot_gitconfig"    ~/.gitconfig
link_file "${DOT_CONFIG_DIR}/wezterm"          ~/.config/wezterm
