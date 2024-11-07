cd dotfiles
ln -sf .bashrc ~/.bashrc
ln -sf .zshrc ~/.zshrc
ln -sf .vimrc ~/.vimrc
ln -sf .vim/autoload ~/.vim
ln -sf .vim/doc ~/.vim
ln -sf .vim/plugin ~/.vim
mkdir -p .vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd .vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
