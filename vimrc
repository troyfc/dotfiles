colors zenburn " colour scheme

syntax on " filetype detection by syntax

set list " show invisible characters
set listchars=tab:›\ ,eol:« " set the characters for the invisibles

" highlight column 80
if exists("&colorcolumn")
  set colorcolumn=80
  highlight ColorColumn ctermbg=blue guibg=blue
endif

set ignorecase " ignore casing of searches
set incsearch " show results as you type
set smartcase " smart case sensitivity when searching

" highlight trailing whitespace except when in insert mode
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" save files with sudo
cmap w!! w !sudo tee > /dev/null %

" don't clobber exisiting line endings - noeol not working...
set binary noeol

set expandtab " insert space characters for tabs
set shiftwidth=2 " number of spaces for indentation
set tabstop=2 " number of spaces for tabs

