" Turn on syntax highlighting
syntax on
" Make vim behaves less like vi
set nocompatible
" Keep a backup copy of the file being edited
set backup
" The Location of the backup files.
set backupdir=~/.backup
" Automatically indent the new line
set autoindent
" Indent the new line according to C-like syntax
set smartindent
" Display lines longer than the current window on the next line(s)
set wrap
" Prevent breaking a word into multiple lines when wrapping
set linebreak
" Display line and column number on the lower-right corner.
set ruler
" Replace all tabs with spaces
set expandtab
" Use 2 spaces for each indentation level
set sw=2
" Load the relevant plugins and indentation rules based on file types
filetype plugin indent on
" Enable 24-bit colors
set termguicolors
" Use gruvbox (dark) as default color scheme
color catppuccin_mocha
" set background=dark
" set line number
set number
" set tab length
set tabstop=2
set shiftwidth=2
" To get around problem with seemingly random characters appear in certain
" teminals.
set t_RV=
set t_u7=

" Airline theme
let g:airline_theme = 'catppuccin_mocha'

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_checkers = ['clang_tidy', 'clang_check']
let g:syntastic_clang_tidy_config_file = 'compile_flags.txt'
let g:syntastic_clang_check_config_file = 'compile_flags.txt'
let g:syntastic_c_compiler = 'clang'
let g:syntastic_c_config_file = 'compile_flags.txt'

" Set Vim Cursor Type
" if &term =~ '^xterm'
"   " enter vim
"   autocmd vimenter * silent !echo -ne "\e[1 q"
"   " otherwise
"   let &t_ei .= "\<esc>[1 q"
"   " insert mode
"   let &t_si .= "\<esc>[5 q"
"   " replace mode
"   let &t_sr .= "\<esc>[3 q"
"   " 1 or 0 -> blinking block
"   " 2 -> solid block
"   " 3 -> blinking underscore
"   " 4 -> solid underscore
"   " recent versions of xterm (282 or above) also support
"   " 5 -> blinking vertical bar
"   " 6 -> solid vertical bar
"   " leave vim
"   autocmd vimleave * silent !echo -ne "\e[1 q"
" endif
