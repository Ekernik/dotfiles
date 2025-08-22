set nocompatible    " Disable compatibility with vi which can cause unexpected issues.
filetype on         " Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype indent on  " Load an indent file for the detected file type.
syntax on           " Turn syntax highlighting on.
set number          " Add numbers to each line on the left-hand side.
set cursorline      " Highlight cursor line underneath the cursor horizontally.
set cursorcolumn    " Highlight cursor line underneath the cursor vertically.
set shiftwidth=4    " Set shift width to 4 spaces.
set tabstop=4       " Set tab width to 4 columns.
set expandtab       " Use space characters instead of tabs.
set nobackup        " Do not save backup files.
set scrolloff=10    " Do not let cursor scroll below or above N number of lines when scrolling.
set nowrap          " Do not wrap lines. Allow long lines to extend as far as the line goes.
set incsearch       " While searching though a file incrementally highlight matching characters as you type.
set ignorecase      " Ignore capital letters during search.
set smartcase       " Override the ignorecase option if searching for capital letters.
set showcmd         " Show partial command you type in the last line of the screen.
set showmode        " Show the mode you are on the last line.
set showmatch       " Show matching words during a search.
set hlsearch        " Use highlighting when doing a search.
set history=1000    " Set the commands to save in history default number is 20.
set wildmenu        " Enable auto completion menu after pressing TAB.
set wildmode=list:longest   " Make wildmenu behave like similar to Bash completion.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx    " Never edit with Vim.
