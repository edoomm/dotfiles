#!/bin/bash

df_path="$(pwd)"

mkdir -p "$HOME/.config/tmux"
mkdir -p "$HOME/.local/bin"
mkdir -p "$HOME/.config/dunst"

ln -fs "$df_path/bash/.bash_profile" "${HOME}/.bash_profile" \
	&& ln -fs "$df_path/bash/.bashrc" "${HOME}/.bashrc" \
	&& ln -fs "$df_path/git/.gitconfig" "${HOME}/.gitconfig" \
	&& ln -fs "$df_path/xserv/.xinitrc" "${HOME}/.xinitrc" \
	&& ln -fs "$df_path/config/alacritty/alacritty.toml" "${HOME}/.config/alacritty/alacritty.toml" \
	&& ln -fs "$df_path/config/i3/config" "${HOME}/.config/i3/config" \
	&& ln -fs "$df_path/config/i3blocks/config" "${HOME}/.config/i3blocks/config" \
	&& ln -fs "$df_path/config/neofetch/config.conf" "${HOME}/.config/neofetch/config.conf" \
	&& ln -fs "$df_path/config/nvim" "${HOME}/.config" \
	&& ln -fs "$df_path/config/tmux/tmux.conf" "${HOME}/.config/tmux/tmux.conf" \
	&& ln -fs "$df_path/bin/openprj" "${HOME}/.local/bin/openprj" \
	&& ln -fs "$df_path/config/dunstrc" "${HOME}/.config/dunst/dunstrc" \
