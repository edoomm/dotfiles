#!/bin/bash

df_path="$(pwd)"

ln -fs "$df_path/bash/.bash_profile" "${HOME}/.bash_profile" \
	&& ln -fs "$df_path/bash/.bashrc" "${HOME}/.bashrc" \
	&& ln -fs "$df_path/git/.gitconfig" "${HOME}/.gitconfig" \
	&& ln -fs "$df_path/xserv/.xinitrc" "${HOME}/.xinitrc" \
	&& ln -fs "$df_path/config/alacritty/alacritty.toml" "${HOME}/.config/alacritty/alacritty.toml" \
	&& ln -fs "$df_path/config/i3/config" "${HOME}/.config/i3/config" \
	&& ln -fs "$df_path/config/i3blocks/config" "${HOME}/.config/i3blocks/config" \
	&& ln -fs "$df_path/config/neofetch/config.conf" "${HOME}/.config/neofetch/config.conf"
