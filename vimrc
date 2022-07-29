set nobackup
set nowrap
set ignorecase
set smartcase
set history=10000
set hlsearch
set incsearch
set backspace=indent,eol,start
set number
set showcmd
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set showtabline=2
setlocal shiftwidth=2

let NERDTreeShowHidden=1
let @/ = ""

" source .vimrc and :PlugInstall after changes
call plug#begin()
  Plug 'preservim/NERDTree'
  Plug 'tomtom/tcomment_vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

nmap <C-P> :FZF<CR>

noremap <leader>nt :NERDTreeToggle<CR>
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

nnoremap Y y$
