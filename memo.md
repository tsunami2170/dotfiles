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
touch ~/.zsh_history
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/plugin ~/.vim/undo
```

## for all OS
```
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim/ ~/.vim
```

## for arch linux
```
ln -sf ~/dotfiles/.xprofile ~/.xprofile
ln -sf ~/dotfiles/.xinitrc ~/.xinitrc
ln -sf ~/dotfiles/.config ~/.config
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

### install cformatter
```
pipx install c-formatter-42
pipx ensurepath
source .zshrc
git clone https://github.com/cacharle/c_formatter_42.vim.git
./install
```

### install nerdtree
```
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
```
### install rainbow
