# Update the system
sudo dnf up -y

# Steam repo
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1

# Brave repo
sudo dnf install dnf-plugins-core -y
sudo dnf config-manager addrepo --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

# Install my packages
xargs sudo dnf install -y < packages.txt

# Zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/zsh-autosuggestions
sudo mkdir /usr/share/zsh/plugins
sudo mv ~/zsh-autosuggestions ~/zsh-syntax-highlighting /usr/share/zsh/plugins

# Change default shell to zsh
chsh -s $(which zsh)

# Move configs
mv ~/dotfiles/.config/nvim ~/.config/
mv ~/dotfiles/.zshrc ~/
