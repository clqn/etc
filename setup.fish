
mkdir -p ~/.config/fish/
ln -sr ~/etc/config.fish ~/.config/fish/config.fish
mkdir ~/bin # for fish_user_path
mkdir ~/del # for the dl alias

mkdir ~/.i3
ln -sr ~/etc/i3config ~/.i3/config
ln -sr ~/etc/i3status.conf ~/.i3/i3status.conf

mkdir ~/.xmonad
ln -sr ~/etc/xmonad.hs ~/.xmonad/xmonad.hs

ln -sr ~/etc/Xresources ~/.Xresources
ln -sr ~/etc/XCompose ~/.XCompose
ln -sr ~/etc/tmux.conf ~/.tmux.conf
ln -sr ~/etc/vimrc ~/.vimrc
