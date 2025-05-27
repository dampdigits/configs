"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" General Settings --------------------------------------------------------------- {{{

" Set encoding to UTF-8
set encoding=UTF-8

" Enable autoindent
set autoindent

" Define tab
set softtabstop=4

" Enable cursor
set mouse=a

" Display colors according to terminal
set termguicolors

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file is use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to the file.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
" set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" }}}

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale' " Check syntax
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } " NerdTree
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " Status bar themes
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes' " Retro colorscheme
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'mg979/vim-visual-multi' " multiple cursors
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'catppuccin/nvim', { 'as': 'catppuccin' } " Catppuccin colorscheme
Plug 'mhinz/vim-startify'
" Plug 'nvimdev/dashboard-nvim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto Completion

call plug#end()

" NERDTree settings
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Completion settings
" set completeopt-=preview " For No Previews

" Gruvbox settings
let g:gruvbox_italic=1
let g:gruvbox_transparent_bg=1
let g:gruvbox_contrast_dark="hard"

" Visual Multi settings
let g:VM_mouse_mappings = 1

" Airline settings
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Airline symbols --------------------------------------------------------------- {{{
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_theme = 'tomorrow'
" }}}

" \ '  __     ___             _____ _____ ',
" \ '  \ \   / (_)_ __ ___   |___  |___ / ',
" \ '   \ \ / /| | ''_ ` _ \     / /  |_ \ ',
" \ '    \ V / | | | | | | |   / /_ ___) |',
" \ '     \_/  |_|_| |_| |_|  /_/(_)____/ ',
" \ '',
" \ '',
" \ ]

let g:startify_custom_header = [
\ '                                         ,;, ',
\ '                         ,kkkkkkkkkkkkkx. ::l;. ;xxxxxxxxxxxxxl ',
\ '                         :kxOKKKKKKKOkko..;;;;c ckxOKKKKKKKKKkc ',
\ '                            XKKKKKKKkl  .;;;;;;" `OKKKKKKK0kl. ',
\ '                            XKKKKKKKkl .;;;;;,.:OX0KKKKK0kc. ',
\ '                            XKKKKKKKkl .;;;".c0K0KKKKK0k:. ',
\ '                            XKKKKKKKkl .;".cKK0KKKKK0k:.. ',
\ '                            XKKKKKKKkl  .lKK0KKKKK0k:..,cl. ',
\ '                         ,; XKKKKKKKkl.oXK0KKKKK0k:..,;;;;:l, ',
\ '                       ,oc. XKKKKKKKkoXK0KKKKK0x:..,;;;;;;;;:l, ',
\ '                        `,. XKKKKKKKOO0KKKKKOd;..,;;;;;;;;;;,. ',
\ '                          . XKKKKKKKKKKKKKO:oo.;;;;;;;;;;;,. ',
\ '                            XKKKKKKKKKKK0x.;l;,;;;;;;;;;,. ',
\ '                            XKKKKKKKKK0x":;c;".:cc,`"cc,  ,;; ',
\ '                            XKKKKKKK0x;..;K0.;.oKkoldKKc .OK0 ',
\ '                            XKKKKK0d"..,`0K;,,;KO. .lKd   0K: ',
\ '                            XKKK0d"  `,.kKd.;.0K"  .K0   dKk ',
\ '                            lccc"      `oo;.,;l. ',
\ '                                         `,," ',
\ ]

" }}}

" MAPPINGS --------------------------------------------------------------- {{{

" Set the backslash as the leader key.
" let mapleader = "\"

" Press \\ to jump back to the last cursor position.
nnoremap <leader>\ ``

" Press \p to print the current file to the default printer from a Linux operating system.
" View available printers:   lpstat -v
" Set default printer:       lpoptions -d <printer_name>
" <silent> means do not display output.
nnoremap <silent> <leader>p :%w !lp<CR>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current line.
nnoremap o o<esc>
nnoremap O O<esc>

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" Map the F5 key to run a Python script inside Vim.
" We map F5 to a chain of commands here.
" :w saves the file.
" <CR> (carriage return) is like pressing the enter key.
" !clear runs the external clear screen command.
" !python3 % executes the current file with Python.
nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
nnoremap <F3> :NERDTreeToggle<cr>

" Have nerdtree ignore certain files and directories.
" let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" Toggle tagbar
nmap <F8> :TagbarToggle<CR>

" Remapping REDO to 'y' from 'Ctrl + r' for normal mode only
nnoremap y <C-r>
xnoremap y y

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" Set colorscheme
autocmd vimenter * ++nested colorscheme habamax

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | wincmd p

" Enable the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" If the current file type is HTML, set indentation to 2 spaces.
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" If Vim version is equal to or greater than 7.3 enable undofile.
" This allows you to undo changes to a file even after saving it.
if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

" You can split a window into sections by typing `:split` or `:vsplit`.
" Display cursorline and ONLY in active window.
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline
augroup END

" If GUI version of Vim is running set these options.
if has('gui_running')

    " Set the background tone.
    set background=dark

    " Set the color scheme.
    colorscheme habamax

    " Set a custom font you have installed on your computer.
    " Syntax: <font_name>\ <weight>\ <size>
    set guifont=Monospace\ Regular\ 12

    " Display more of the file by default.
    " Hide the toolbar.
    set guioptions-=T

    " Hide the the left-side scroll bar.
    set guioptions-=L

    " Hide the the left-side scroll bar.
    set guioptions-=r

    " Hide the the menu bar.
    set guioptions-=m

    " Hide the the bottom scroll bar.
    set guioptions-=b

    " Map the F4 key to toggle the menu, toolbar, and scroll bar.
    " <Bar> is the pipe character.
    " <CR> is the enter key.
    nnoremap <F4> :if &guioptions=~#'mTr'<Bar>
        \set guioptions-=mTr<Bar>
        \else<Bar>
        \set guioptions+=mTr<Bar>
        \endif<CR>

endif

" }}}