" general config
set encoding=utf-8
set number relativenumber
syntax enable
set noswapfile
set backspace=indent,eol,start
set cursorline
set mouse=a

" python config
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

let mapleader = ' '

" Code execution config
set splitbelow splitright


call plug#begin('~/.vim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'deoplete-plugins/deoplete-jedi'

Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


let g:deoplete#enable_at_startup = 1

colorscheme gruvbox
let g:airline_theme='gruvbox'

if (has("termguicolors"))
    set termguicolors
endif

lua require 'colorizer'.setup()

" NerdCommenter
nmap <C-_> <Plug>NERDCommenterToggle

" NerdTree
let NERDTreeQuitOpen=1
nmap <F2> :NERDTreeToggle<CR>

" Tabs
let g:airline#extension#tabline#enabled=1
let g:airline#extension#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-w> :bd<CR>

" Run Code
augroup exe_code
    autocmd!
    " execute python code
    autocmd FileType python nnoremap <buffer> <leader>r
                \ :sp<CR> :term python3 %<CR> :startinsert<CR>
    autocmd!
    " execute js code
    autocmd FileType javascript nnoremap <buffer> <leader>r
                \ :sp<CR> :term nodejs %<CR> :startinsert<CR>
augroup END

