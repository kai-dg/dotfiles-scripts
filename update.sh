#!/bin/bash
## personal config updating script
cp ~/.config/rofi/config.rasi ~/00/dotfiles/rofi/config.rasi
cp ~/.config/bspwm/bspwmrc ~/00/dotfiles/bspwm/bspwmrc
cp ~/.config/picom/picom.conf ~/00/dotfiles/picom/picom.conf
cp ~/.config/starship.toml ~/00/dotfiles/starship/starship.toml 
cp ~/.config/kitty/kitty.conf ~/00/dotfiles/kitty/kitty.conf
cp ~/.config/sxhkd/sxhkdrc ~/00/dotfiles/sxhkd/sxhkdrc
cp ~/.bashrc ~/00/dotfiles/bashrc/bashrc
cp ~/install_ref ~/00/dotfiles/arch/
rsync -av ~/.config/gtk-3.0 ~/00/dotfiles
rsync -av ~/.config/nvim ~/00/dotfiles
