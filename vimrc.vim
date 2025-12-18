if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set clipboard=unnamedplus
set hlsearch
filetype plugin indent on
set undofile
set hidden
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=2 " make backspace work like most other programs
nnoremap <space> :w<CR>
set tw=0
nnoremap <esc> :noh<return><esc>
set path=.,**
noremap <f2> :Files<CR>
noremap <f3> :UndotreeToggle<CR>

call plug#begin('~/.vim/plugged')
    Plug 'junegunn/vim-easy-align'
    Plug 'morhetz/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } "Fuzzy file finder
    Plug 'junegunn/fzf.vim'
    Plug 'mbbill/undotree'
    Plug 'https://github.com/tpope/vim-commentary' "Uncomment and comment
    Plug 'https://github.com/github/copilot.vim'
call plug#end()

set background=dark
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Move to the next buffer
nmap <leader>f :bnext<CR>

" Move to the previous buffer
nmap <leader>d :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>q :bp <BAR> bd #<CR>

" let g:copilot_auth_provider_url = 'https://ericsson.ghe.com'
let g:gruvbox_contrast_dark = 'hard'
let $FZF_DEFAULT_COMMAND = 'find . \( -path "*/venv" -o -path "*/.venv" -o -path "*/__pycache__" -o -name ".*" ! -name "." ! -name ".." \) -prune -o -type f -print'
autocmd FileType robot setlocal commentstring=#\ %s
colorscheme gruvbox
