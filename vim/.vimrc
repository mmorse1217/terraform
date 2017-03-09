syntax on
set background=dark
"let g:solarized_termcolors=256
colorscheme solarized
set nu
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set colorcolumn=80
set hlsearch
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

set undofile                                                                       
set undodir=/Users/mmorse/.vimundo
set ruler
set nocp
set tw=80
let g:clang_library_path='/usr/lib/llvm-3.8/lib'
"set foldmethod=indent
"set foldlevel=1
"set foldclose=all
au BufRead,BufNewFile *.txx setfiletype cpp 
au BufRead,BufNewFile *.tpp setfiletype cpp 


"Spell check
"set spell spelllang=en_us
