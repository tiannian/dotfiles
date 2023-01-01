#!/usr/bin/env bash

mkdir -p $HOME/.config

ln -sf $HOME/workspace/dotfiles/nvim $HOME/.config/nvim || exit 1

