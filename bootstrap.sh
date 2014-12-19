#!/usr/bin/env bash

spf13_dir="$HOME/.spf13-vim-3"

git_uri="https://github.com/zhiqunq/vim-local.git"
git_branch="master"
local_dir="$HOME/.vim-local"
local_spf13_dir="$local_dir/spf13-vim"

if [ ! -e "$local_dir" ]; then
    git clone --recursive -b "$git_branch" "$git_uri" "$local_dir"
fi

if [ ! -e "$spf13_dir" ]; then
    ln -sf "$local_spf13_dir" "$spf13_dir"
fi

lnfile() {
    if [ -e "$local_dir/$1" ]; then
        ln -sf "$local_dir/$1" "$HOME/.$1"
    fi
}

lnfile "vimrc.before.fork"


bash "$spf13_dir/bootstrap.sh"

lnfile "vimrc.local"
lnfile "vimrc.bundles.local"
