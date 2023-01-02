#!/usr/bin/env bash

mkdir -p $HOME/.config

ln -sf $HOME/.config/nvim nvim || exit 1
ln -sf $HOME/.config/sway sway || exit 1

