" Use <space> as regular and local leader
" <space> needs to be remapped before assignment to mapleader
nnoremap <space> <nop>
vnoremap <space> <nop>
let mapleader=" "
let maplocalleader=" "

" .vimrc edition
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Surround current word or selection
function! SurroundNormal(begin, end)
    execute "normal! viw\<esc>a" . a:end . "\<esc>hbi" . a:begin . "\<esc>lel"
endfunction

function! SurroundVisual(begin, end)
    execute "normal! \<esc>`<i" . a:begin . "\<esc>`>la" . a:end . "\<esc>"
endfunction

nnoremap <leader>" :call SurroundNormal('"', '"') <cr>
nnoremap <leader>' :call SurroundNormal("'", "'") <cr>
nnoremap <leader>( :call SurroundNormal("(", ")") <cr>
nnoremap <leader>) :call SurroundNormal("(", ")") <cr>
nnoremap <leader>[ :call SurroundNormal("[", "]") <cr>
nnoremap <leader>] :call SurroundNormal("[", "]") <cr>
nnoremap <leader>{ :call SurroundNormal("{", "}") <cr>
nnoremap <leader>} :call SurroundNormal("{", "}") <cr>
nnoremap <leader>< :call SurroundNormal("<", ">") <cr>
nnoremap <leader>> :call SurroundNormal("<", ">") <cr>

vnoremap <leader>" :call SurroundVisual('"', '"') <cr>
vnoremap <leader>' :call SurroundVisual("'", "'") <cr>
vnoremap <leader>( :call SurroundVisual("(", ")") <cr>
vnoremap <leader>) :call SurroundVisual("(", ")") <cr>
vnoremap <leader>[ :call SurroundVisual("[", "]") <cr>
vnoremap <leader>] :call SurroundVisual("[", "]") <cr>
vnoremap <leader>{ :call SurroundVisual("{", "}") <cr>
vnoremap <leader>} :call SurroundVisual("{", "}") <cr>
vnoremap <leader>< :call SurroundVisual("<", ">") <cr>
vnoremap <leader>> :call SurroundVisual("<", ">") <cr>

" Line numbers and disabling them
set number
nnoremap <F2> :set number! foldcolumn=0<CR>

" Global defaults: indent by 4 spaces, highlight syntax, don't fold, backspace
" over anything
set expandtab tabstop=8 softtabstop=4 shiftwidth=4 autoindent
syntax on
set foldlevelstart=100
set backspace=indent,eol,start

" Make sure ftdetect files are loaded
filetype plugin on

" Highlight results, use verymagic by default all ASCII characters except
" 0-9, a-z, A-Z and _ are special)
set hlsearch
nnoremap / /\v
nnoremap <leader><space> :noh<cr>

" Configure status line
set statusline=%F      " filename
set statusline+=\ %m   " modified flag
set statusline+=%r     " read only flag
set statusline+=%y     " filetype
set statusline+=%=     " left/right separator
set statusline+=%v,    " virtual cursor column
set statusline+=%l/%L  " cursor line/total lines
set statusline=%F\ %m\ %r%y%=%v,%l/%L
" Always show status line
set laststatus=2

" Don't wrap text, set column marker
set textwidth=0
set colorcolumn=80

