#!/bin/zsh


dir=~/dotfiles
dir_bak=~/dotfiles.bak
paths="zsh/.zshrc zsh/.p10k.zsh wezterm/.wezterm.lua tmux/.tmux.conf"

<<comment
echo -n "Creating $dir_bak for backup of any existing dotfiles in home directory..."
mkdir -p $dir_bak

echo -n "Changing to $dir directory..."
cd $dir

for path in $paths; do
    echo "Moving any existing dotfiles from home to $dir_bak"
    mv ~/.$file ~/dotfiles.bak/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$path ~/$path
done




comment

ln -s ~/dotfiles/wezterm/.wezterm.lua ~/.wezterm.lua
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
#ln -s ~/dotfiles/nvim ~/.config/nvim
