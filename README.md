### install script
> curl -sL https://raw.githubusercontent.com/aiktb/dotzsh/master/zsh.sh | bash && zsh
# Description

## zsh.sh
> Depends on the apt package manager
## install these two plugins 
> https://github.com/zsh-users/zsh-history-substring-search \n
> https://github.com/MichaelAquilina/zsh-you-should-use
sudo apt install thefuck
Zsh configured with the following plugins and a powerlevel10k theme.

- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
- [sudo](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo)
- [colored-man-pages](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colored-man-pages)
- [extract](https://github.com/le0me55i/zsh-extract)
- [autojump](https://github.com/wting/autojump)
- [jsontools](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/jsontools)

Move ".zcompdump-*" file to "$ZSH/cache" directory.

Configure the default ZSH configuration for new users.(/etc/skel/)
