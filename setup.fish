
mkdir -p ~/.config/fish/
ln -sr ~/etc/config.fish ~/.config/fish/config.fish
mkdir ~/bin # for fish_user_path
mkdir ~/del # for the dl alias

mkdir ~/.i3
ln -sr ~/etc/i3config ~/.i3/config
ln -sr ~/etc/i3status.conf ~/.i3/i3status.conf

mkdir ~/.xmonad
ln -sr ~/etc/xmonad.hs ~/.xmonad/xmonad.hs

mkdir ~/.local
mkdir ~/.local/share
ln -sr ~/etc/applications ~/.local/share/applications

ln -sr ~/etc/Xresources ~/.Xresources
ln -sr ~/etc/XCompose ~/.XCompose
ln -sr ~/etc/xprofile ~/.xprofile
ln -sr ~/etc/xinitrc ~/.xinitrc
ln -sr ~/etc/tmux.conf ~/.tmux.conf
ln -sr ~/etc/vimrc ~/.vimrc


echo "manually address the following:"
echo "• vconsole.conf should go in /etc"
echo "  (be sure to install the terminus font)"
echo "• dvorak-swap.map should go in /usr/share/kbd/keymaps/"
