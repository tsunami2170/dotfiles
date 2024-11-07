set number
set encoding=utf-8
set fileencoding=utf-8
set noswapfile
set clipboard=unnamedplus
"sudo apt install vim-athena
set smartindent
set autoindent
set backspace=indent,eol,start
set laststatus=2
set cursorline

set showtabline=2
set statusline+=%=
set laststatus=0

set hidden

set splitright
set splitbelow

set ignorecase
set smartcase
set hlsearch
set wrapscan
set incsearch

set showmatch

nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap <C-l> <C-w>>
nnoremap <C-h> <C-w><
nnoremap <Leader>1 :tabfirst<CR>
noremap <S-h> 0
noremap <S-l> $

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-w> <Home>
inoremap <C-e> <End>

"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
"inoremap < <><LEFT>

syntax enable;

if has('persistent_undo')
	let undo_path = expand('~/.vim/undo')
	exe 'set undodir=' .. undo_path
	set undofile
endif

if has('vim_starting')
    let &t_SI .= "\e[6 q"
    let &t_EI .= "\e[2 q"
    let &t_SR .= "\e[4 q"
endif

:command Cx w !cc -Wall -Wextra -Werror % -o tmp && ./tmp && rm tmp
:command ST Stdheader

let g:user42 = 'tssaito'
let g:mail42 = 'tssaito@student.42.fr'

 let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
\   'guifgs': ['red', 'green', 'blue', 'yellow', 'magenta', 'lightred'], 
\   'ctermfgs': ['red', 'green', 'blue', 'yellow', 'magenta', 'lightred']
\}

execute pathogen#infect()
