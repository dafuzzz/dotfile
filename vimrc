"
" A (not so) minimal vimrc
"

" Set 'nocompatible' anyway to make sure you get vim, not vi
" We set it explicitly to make our position clear.


" =================== Settings =============================

set nocompatible

filetype plugin indent on	" Load plugins according to detected filetype.
syntax on		" Enable syntax highlighting.

set encoding=utf-8
set fileencodings=utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8

set autoindent		" Indent according to previous line.
set expandtab		" Use spaces instead of tabs
set shiftwidth=4	" >> indents by 4 spaces.
set shiftround      " >> indents to next multiple of 'shiftwidth'
set tabstop=4       " Bumber of spaces that a <Tab> in the file counts for.
set softtabstop=4   " Number of spaces that a <Tab> counts for while
                    " performing editing operations, like inserting a <Tab> or
                    " using <BS>

                
set backspace=indent,eol,start  " Make backspace work as you wole expect.
set hidden              " Switch between buffers without having to save first.
set laststatus=2        " Always show statusline.
set display=lastline    " Show as much as possible of the last line.

set showmode            " Show current mode in command-line.
set showcmd             " Show already typed keys when more are expected.

set incsearch           " Highlight whle searching with / or ?
set hlsearch            " Keep matches highlighted
set ignorecase          " Ignore the case of normal letters
set smartcase           " Ignore case when the pattern contains 
                        " lowercase letters only.

set ttyfast             " Faster redrawing.
set lazyredraw          " Only redraw when necessary

set splitbelow          " Open new windows below the current window.
set splitright          " Open new windows right of the current window

set cursorline          " Find the current line quickly.
set wrapscan            " Searches wrap around end-of-file.
set report=0            " Always report changed lines.
set synmaxcol=200       " Only highlight the first 200 columns.

set nu                  " Precede each line with its line number 

"set showmatch       " When a bracket is inserted, briefly jump to 
                    " the matching one.
"set matchtime=1     " Tenths of a second to show the matching paren,
                    " when 'showmatch' is set.
set noshowmatch
set scrolloff=10    " Minimal number of screen line to 
                    " keep above and below the cursor.

set wildmenu        " Enhance command-line completion, invoke completion 
                    " on pressing 'wildchar'(usually <Tab>)
                    " Completion mode that is used for the character 
                    " specified with 'wildchar'
set wildmode=longest:full,full        
set wildchar=<Tab>        " Charater to invoke completion 

set path=$PWD/**    " A list of directories to be searched when using :sfind

set wrap            " Wrap the line when it's longer than the width of the
                    " window and display on the next line
set linebreak       " Wrap long lines at a character in 'breakat' 
                    " rather than at the last character that 
                    " fits on the screen
au Filetype c,cpp,python set textwidth=80    
                   " Maximum width of text that is being inserting.
                    " A longer line will be broken after white space to 
                    " this width.
au Filetype c,cpp,python set colorcolumn=81  
                    " A comma separated list of screen columns that are
                    " highlighted with ColorColumn.



" ================ Mapping ==================================
let mapleader=","


" +++++++++ Normal Mode ++++++++++++
" Modify $MYVIMRC everywhere.
nnoremap <leader>ev :vsplit $MYVIMRC <cr>
" Reload $MYVIMRC
nnoremap <leader>sv :source $MYVIMRC <cr>
" `<space>` to select the word where the curosr is in visual mode
nnoremap <space> viw     
" `<leader>d` to delete the crrent line
nnoremap <leader>d dd
" Change current window
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l


" +++++++++ insert mode ++++++++++++
" ctrl+d to delete the current line in insert line
inoremap <leader>d <esc>ddi
" jk to return to normal mode 
inoremap jk <esc>
" <leader>w to save the file
inoremap <leader>w <esc>:w <cr>
" <leader>q to save the file and quit
inoremap <leader>q <esc>:wq <cr>
" <leader>o to add a line below
inoremap <leader>o <esc>o


