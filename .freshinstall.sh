# Must

sh -c "$(curl -sL https://nextdns.io/install)"

sudo pacman -S ufw

sudo ufw enable

# Essential

sudo pacman -S libreoffice neofetch ranger ueberzug ffmpeg ffmpegthumbnailer git mpv nitrogen gimp obsidian rsync rclone flatpak gocryptfs keepassxc neovim picom starship gvfs mtpfs scrcpy tmux bash-completion tumbler audacity shotcut obs-studio handbrake  lxappearance thunar thunar-volman thunar archive-plugin usbutils gnu-free-fonts ttf-dejavu ttf-dejavu-nerd fuse2 polkit udiskie udisks2 qtile-extras deltachat-desktop curtail converseen flameshot python-psutil

# Optional 
# sudo pacman -S lynx thunderbird

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

sudo pacman -Rns ristretto parole
