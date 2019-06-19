" automatically switch to case-sensitive search if using any capital letters.
set ignorecase
set smartcase
" enter spaces when tab is pressed:
set expandtab
" use N spaces to represent a tab
set tabstop=4
set softtabstop=4
" number of space to use for auto indent:
" use >> or << keys to indent current line or selection
" in normal mode
set shiftwidth=2
" copy indent from one line to the next:
set autoindent
" makes backspace more powerful
set backspace=indent,eol,start
" shows the match while typing:
set incsearch
" case insenesitve search
set ignorecase
" show line and column number
set ruler
" autocomplete
set wildmode=longest:full
" show some autocomplete options in status bar
set wildmenu
" show an underscored line based on your position in the file
" set cursorline
" Full syntax highlighting:
let python_highlight_all=1
syntax on
colorscheme distinguished
" Set colours to represent a dark background:
set background=dark
" Use the blow highlight group when displaying bad whitespace is desired:
highlight BadWhitespace ctermbg=red guibg=red
" Display tabs at the beginning of a line in Python mode as bad:
au BufRead,BufNewFile *.py,*.pyw,*.go,*.php match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.go,*.php match BadWhitespace /\s\+$/
" Wrap text after a certain number of characters:
" Python: 80
" C: 80
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.go set textwidth=80
" Use UNIX (\n) line endings.
" Only used for new files so as to not force existing files to change their
" line endings.
" Python: yes
" C: yes

" subdir files textwidth should be 100
" au BufRead,BufNewFile /home/jeff/l/{*.py,*.pyw,*.c,*.h,*.go} set textwidth=100

au BufNewFile *.py,*.pyw,*.c,*.h,*.go set fileformat=unix
" Turn off settings in 'formatoptions' relating to comment formatting.
" - c : do not automatically insert the comment leader when wrapping based on
"    'textwidth'
" - o : do not insert the comment leader when using 'o' or 'O' from command mode
" - r : do not insert the comment leader when hitting <Enter> in insert mode
" Python: not needed
" C: prevents insertion of '*' at the beginning of every line in a comment
au BufRead,BufNewFile *.c,*.h set formatoptions-=c formatoptions-=o formatoptions-=r

" python autoindent
set cindent
autocmd FileType python setlocal smartindent shiftwidth=4 ts=4 et cinwords=if,elif,else,for,while,try,except,finally,def,class
filetype plugin indent on

" cursorline target cl
map cl :set cursorline!<CR>:set cursorcolumn!<CR>

" disable incessant wsl beeping
set visualbell
