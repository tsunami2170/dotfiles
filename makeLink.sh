sudo apt update
sudo apt upgrade -y
sudo apt install -y git pipx curl
pipx ensurepath
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim/autoload ~/.vim
ln -sf ~/dotfiles/.vim/doc ~/.vim
ln -sf ~/dotfiles/.vim/plugin ~/.vim
pipx install c-formatter-42
pipx install norminette
pipx ensurepath
git clone https://github.com/cacharle/c_formatter_42.vim.git ~/Download/c_formatter_42.vim
~/Download/c_formatter_42.vim/install
mkdir -p ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree.git
