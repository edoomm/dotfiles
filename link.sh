#!/bin/bash

option="$1"
df_path="$(pwd)"

mkdir -p "$HOME/.config/tmux"
mkdir -p "$HOME/.local/bin"
mkdir -p "$HOME/.config/dunst"

link_file() {
	source_path="$df_path/$1"
	target_path="$HOME/$2"
	if [ -f "$source_path" ] || [ -d "$source_path" ] ; then
		ln -fs "$source_path" "$target_path"
		echo "Linked: $source_path to $target_path"
	else
		echo "Error: Source file or directory '$source_path' not found."
	fi
}

declare -A links_source=(
	["bashrc"]="bash/.bashrc"
	["bashpf"]="bash/.bash_profile"
	["git"]="git/.gitconfig"
	["xinitrc"]="xserv/.xinitrc"
	["alacritty"]="config/alacritty/alacritty.toml"
	["i3"]="config/i3/config"
	["i3blocks"]="config/i3blocks/config"
	["neofetch"]="config/neofetch/config.conf"
	["nvim"]="config/nvim"
	["tmux"]="config/tmux/tmux.conf"
	["openprj"]="bin/openprj"
	["dunst"]="config/dunstrc"
)

declare -A links_target=(
	["bashrc"]=".bashrc"
	["bashpf"]=".bash_profile"
	["git"]=".gitconfig"
	["xinitrc"]=".xinitrc"
	["alacritty"]=".config/alacritty/alacritty.toml"
	["i3"]=".config/i3/config"
	["i3blocks"]=".config/i3blocks/config"
	["neofetch"]=".config/neofetch/config.conf"
	["nvim"]=".config"
	["tmux"]=".config/tmux/tmux.conf"
	["openprj"]=".local/bin/openprj"
	["dunst"]=".config/dunst/dunstrc"
)

# Check if the option is valid
if [[ ! ${links_source[$option]} ]]; then
	echo "Error: Invalid option '$option'. Available options: ${!links_source[@]}"
	exit 1
fi

link_file "${links_source[$option]}" "${links_target[$option]}"
