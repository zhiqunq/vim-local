#!/usr/bin/env sh

spf13_dir="$HOME/.spf13-vim-3"

bash "$spf13_dir/uninstall.sh"

rm $HOME/.vimrc.local
rm $HOME/.vimrc.before
rm $HOME/.vimrc.before.local
rm $HOME/.vimrc.before.fork
rm $HOME/.vimrc.bundles.local
rm -rf $HOME/.vim-local
