#!/bin/bash

sudo pacman -Sy --noconfirm zsh
# Install oh-my-zsh.
sh 0>/dev/null -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
export ZSH_CUSTOM
# Configure plugins.
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM}"/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git "${ZSH_CUSTOM}"/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search "${ZSH_CUSTOM}"/plugins/zsh-history-substring-search
sudo pacman -Sy --noconfirm thefuck autojump 
sed -i 's/^plugins=.*/plugins=(git\n extract\n thefuck\n autojump\n jsontools\n colored-man-pages\n zsh-autosuggestions\n zsh-syntax-highlighting\n zsh-history-substring-search\n you-should-use\n nvm\n debian)/g' ~/.zshrc
# Enable nvm plugin feature to automatically read `.nvmrc` to toggle node version.
sed -i '1s/^/zstyle ':omz:plugins:nvm' autoload yes\n/' ~/.zshrc
# Install powerlevel10k and configure it.
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM}"/themes/powerlevel10k
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc
# Move ".zcompdump-*" file to "$ZSH/cache" directory.
sed -i -e '/source \$ZSH\/oh-my-zsh.sh/i export ZSH_COMPDUMP=\$ZSH\/cache\/.zcompdump-\$HOST' ~/.zshrc
# Configure the default ZSH configuration for new users.
sudo cp ~/.zshrc /etc/skel/
#sudo cp ~/.p10k.zsh /etc/skel/
sudo cp -r ~/.oh-my-zsh /etc/skel/
sudo chmod -R 755 /etc/skel/
sudo chown -R root:root /etc/skel/

# Show version
zsh --version

# Set zsh as default shell
chsh -s /usr/bin/zsh 


# Echo zsh. 
echo $SHELL

# Logout & Login if don't see zsh as default shell.
echo "Logout & Login if don't see zsh as default shell."

# Install oh-my-zsh. https://github.com/ohmyzsh/ohmyzsh
# Assuming you have curl installed.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Use agnoster theme
# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#agnoster
# Edit ZSH_THEME
sed  -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc

# Install powerline font
sudo pacman -Sy --noconfirm fonts-powerline

# Install powerlevel10k
sudo rm -R ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Edit zshrc and add powerlevel
sed  -i 's/ZSH_THEME="agnoster"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc

# Install plugins (zsh-autosuggestions and zsh-syntax-highlighting)
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


# Enable plugins
sed  -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc

echo "Successfully Installed. Start new terminal and configure powerlevel10k."
echo "If p10k configuration wizard does not start automatically, run following"
echo "p10k configure"
echo "Thanks for using this script. It actually saves lot of time to install & configure zsh."
