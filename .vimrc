" Basic settings
set number
set encoding=utf-8
set fileencoding=utf-8
set backspace=indent,eol,start
set noswapfile
syntax enable;

" Underline the current line
set cursorline
" Highlight corresponding brackets
set showmatch

" Automatically indent
set smartindent
set autoindent

" Save to clipboard after yank(after apt install vim-athena)
set clipboard=unnamedplus

" Do not display status line
set laststatus=0
" Show file name
set showtabline=2

" Ignore case when searching but distinguish only uppercase letters
set ignorecase
set smartcase
" Highlight search resuluts
set hlsearch
" Return to the beginning after searching to the end
set wrapscan
" Display partial matches in real time
set incsearch

" Open another file even before saving the editing file 
set hidden

" When using 'split', new windows will be placed on the right or below
set splitright
set splitbelow

" No highlight
nnoremap <ESC><ESC> :nohlsearch<CR>
" Change the window size
nnoremap <C-l> <C-w>>
nnoremap <C-h> <C-w><
" Shortcut for start of line and end of line
noremap <S-h> 0
noremap <S-l> $

" Keybinding in insert mode
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-w> <Home>
inoremap <C-e> <End>

" Bracket completion
"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
"inoremap < <><LEFT>

" Cursor shape
if has('vim_starting')
    let &t_SI .= "\e[6 q"
    let &t_EI .= "\e[2 q"
    let &t_SR .= "\e[4 q"
endif

" Go back to the state before saving
if has('persistent_undo')
	let undo_path = expand('~/.vim/undo')
	exe 'set undodir=' .. undo_path
	set undofile
endif

" Alias
:command Cx w !cc -Wall -Wextra -Werror % -o tmp && ./tmp && rm tmp
:command ST Stdheader
:command NE NERDTree

" Setting for Rainbow(plugin)
 let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['red', 'green', 'blue', 'yellow', 'magenta', 'lightred'], 
\   'ctermfgs': ['red', 'green', 'blue', 'yellow', 'magenta', 'lightred']
\}

" Setting for Nerdtree(plugin)
execute pathogen#infect()

" For 42Tokyo
let g:user42 = 'tssaito'
let g:mail42 = 'tssaito@student.42.fr'
