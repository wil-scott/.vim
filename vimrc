" first things first "
set nocompatible

" disable file detection "
filetype off

" Set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" Download plug-ins
call vundle#begin('~/.vim/plugged')

" Get Vundle to manage Vundle
Plugin 'VundleVim/Vundle.vim'

" syntax highlighting and indentation plugin
Plugin 'sheerun/vim-polyglot'

" Color Schemes
Plugin 'cocopon/iceberg.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'lifepillar/vim-solarized8'

" autopairs plugin for brackets/parentheses/quotes
Plugin 'jiangmiao/auto-pairs'

" autocomplete plugin
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()

" auto indent based on file type "
filetype plugin indent on

" syntax highlighting on "
syntax on

" add line numbers "
set number

" tab width to 4 columns "
set tabstop=4

" shift width to 4 spaces "
set shiftwidth=4

" Use spaces when tabbing instead of \t
set expandtab

" number of spaces/columns moved when hitting tab "
set softtabstop=4

" Set incremental and highlight search
set incsearch
set hlsearch

" no line wrapping "
set nowrap

set termguicolors
colorscheme solarized8 

" Set terminal size, split below
set termwinsize=12x0
set splitbelow

" set mouse in all modes "
set mouse=a

" allow backspacing over everything in insert mode "
set backspace=indent,eol,start

" highlight cursor col and line "
set cursorline
set cursorcolumn

" clear status line when vimrc is reloaded
set statusline=
        
" status line left side.
set statusline+=\ %F\ %M\ %Y\ %R
        
" divider to separate left from right
set statusline+=%=
        
" status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
        
" show status on second to last line
set laststatus=2