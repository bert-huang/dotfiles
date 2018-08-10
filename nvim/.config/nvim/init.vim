colorscheme default
set guicursor=
set nocompatible
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent
set smartindent
set backspace=indent,eol,start
set clipboard=unnamedplus

set hlsearch
set showcmd

set number
set mouse-=a

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=Cyan ctermfg=6 guifg=Black ctermbg=0
  elseif a:mode == 'r'
    hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0
  else
    hi statusline guibg=DarkRed ctermfg=1 guifg=Black ctermbg=0
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" default the statusline to green when entering Vim
hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" Formats the statusline
set statusline=%f                           " file name
set statusline+=[%{strlen(&fenc)?&fenc:'none'}] "file encoding
"set statusline+=%y      "filetype
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag

set statusline+=\ %=                        " align left
set statusline+=%l:%c\ /\ %L\ [%p%%]        " line X of Y [percent of file]
"set statusline+=\ Buf:%n                   " Buffer number
"set statusline+=\ [%b][0x%B]\              " ASCII and byte code under cursor"

set laststatus=2

map <F4> :set nu!<CR>
map <F2> :set paste!<CR>
