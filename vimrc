colors zenburn " colour scheme
set expandtab " Expand tabs to the proper type and size
set tabstop=2 " set tabs to be the width of 2 characters
syntax on " Enable filetype detection by syntax
set list " Show invisible characters
set listchars=tab:›\ ,eol:« "Set the characters for the invisibles
if exists("&colorcolumn")
  set colorcolumn=80 " Highlight 80 character limit
endif
set ignorecase " Ignore casing of searches
set incsearch " Start showing results as you type
set smartcase " Be smart about case sensitivity when searching

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Allow saving of files with sudo
cmap w!! w !sudo tee > /dev/null %

" don't clobber exisiting line endings - noeol not working...
set binary noeol

