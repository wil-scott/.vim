" enable file detection "
filetype on

" syntax highlighting on "
syntax on

" tab width to 4 columns "
set tabstop=4

" shift width to 4 spaces "
set shiftwidth=4

" no line wrapping "
set nowrap

" number of spaces/columns moved when hitting tab "
set softtabstop=4

" auto indent based on file type "
filetype plugin indent on

" autoindent on unrecognized file types "
set autoindent
set smartindent

set termguicolors
colorscheme slate 

" add line numbers "
set number

" shortcuts for setting a 80-char limit line "
nnoremap <Leader>cc :set cc=80<cr>
nnoremap <Leader>ncc :set cc-=80<cr>a

" set mouse in all modes "
set mouse=a

" allow backspacing over everything in insert mode "
set backspace=indent,eol,start

" highlight cursor col and line "
set cursorline
set cursorcolumn

" PLUGINS ----------------------------------------------- {{{
	" Plugin code here.
" }}}

" MAPPINGS ---------------------------------------------- {{{
	" Mappings here.
" }}}

" VIMSCRIPT --------------------------------------------- {{{
	" Enable code folding
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" STATUS LINE ------------------------------------------- {{{
	" Status bar code here.
	"
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

" }}}


