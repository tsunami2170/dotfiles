sudo apt update && sudo apt upgrade -y
sudo apt install git zsh vim vim-athena pipx curl
git config --global user.email "jvlipnitsk@gmail.com"
git config --global user.name "Tsunami-S"
pipx ensurepath
sudo chsh -s /bin/zsh
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim/autoload ~/.vim
ln -sf ~/dotfiles/.vim/doc ~/.vim
ln -sf ~/dotfiles/.vim/plugin ~/.vim
pipx install c-formatter-42
pipx install norminette
pipx ensurepath
source .zshrc .bashrc
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/plugin
git clone https://github.com/cacharle/c_formatter_42.vim.git ~/.vim/c_formatter_42
~/.vim/c_formatter_42/install
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/luochen1990/rainbow.git ~/.vim/rainbow
cp ~/.vim/rainbow/plugin/* ~/.vim/plugin
cp ~/.vim/rainbow/autoload/* ~/.vim/autoload
