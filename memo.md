## install 
```
git zsh vim vim-athena pipx curl
```

## git setup
```
ssh-keygen
git config --global user.email "jvlipnitsk@gmail.com"
git config --global user.name "Tsunami-S"
```

## make directories and files
```
sudo chsh -s /bin/zsh tsunami
touch /home/$(USER)/.zsh_history
mkdir -p /home/$(USER)/.vim/autoload /home/$(USER)/.vim/bundle /home/$(USER)/.vim/plugin /home/$(USER)/.vim/undo
```

## for all OS
```
ln -sf /home/$(USER)/dotfiles/.bashrc /home/$(USER)/.bashrc
ln -sf /home/$(USER)/dotfiles/.zshrc /home/$(USER)/.zshrc
ln -sf /home/$(USER)/dotfiles/.vimrc /home/$(USER)/.vimrc
ln -sf /home/$(USER)/dotfiles/.vim/ /home/$(USER)/.vim
```

## for arch linux
```
ln -sf /home/$(USER)/dotfiles/.xprofile /home/$(USER)/.profile
ln -sf /home/$(USER)/dotfiles/.config /home/$(USER)/.config
```

## read zshrc
```
source .zshrc
```

### install pipx
```
sudo pacman -S python-pip python-pipx
pipx ensurepath
```

### install nerdtree
### install rainbow
