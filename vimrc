set nocompatible            " Use Vim defaults instead of 60% vi compatibility
set backspace=indent,eol,start " Allow backspacing over everything" === Minimal vimrc setup for UltiSnips ===
set completeopt=menuone,noinsert,noselect " Options for the completion menu
set wildmenu                " Enable wildmenu for command-line completion
set wildoptions=pum
set showmode                " Show the current mode in the status line
let mapleader = ","

" Load pathogen or vim-plug to manage plugins (vim-plug example shown here)
call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
" Load UltiSnips plugin
Plug 'SirVer/ultisnips'
" Optionally load a snippet collection (e.g. vim-snippets)
Plug 'honza/vim-snippets'

call plug#end()

" === UltiSnips settings ===

" Trigger for jumping to the next snippet placeholder
let g:UltiSnipsExpandTrigger="<tab>"
" Trigger for jumping to the next snippet placeholder
let g:UltiSnipsJumpForwardTrigger="<c-j>"
" Trigger for jumping to the previous snippet placeholder
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Directory where you store your personal snippets
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

" Don't display messages when you expand a snippet
let g:UltiSnipsVerbose=0

" Optionally, set up completion (use with YouCompleteMe, coc.nvim, etc.)
" let g:UltiSnipsEnableSnipMate = 0  " if using SnipMate compatibility
" let g:UltiSnipsExpandTrigger="<tab>"  " use <tab> for expanding snippets

set tabstop=4        " Number of spaces that a <Tab> counts for
set shiftwidth=4     " Number of spaces to use for each step of (auto)indent
set expandtab        " Convert tabs to spaces
set softtabstop=4
nnoremap <leader>w :w<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
set noswapfile
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
filetype plugin on

set omnifunc=syntaxcomplete#Complete
