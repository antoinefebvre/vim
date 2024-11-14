" Set compatibility mode to VIM only
set nocompatible

" ------- "
" Plugins "
" ------- "
call plug#begin()

    " --------------------------------------------------
    " Icons -- https://github.com/ryanoasis/vim-devicons
    Plug 'ryanoasis/vim-devicons'

    " -----------------------------------------------
    " Colorscheme -- https://github.com/doums/darcula
    Plug 'doums/darcula'

    " ------------------------------------------------------
    " File explorer -- https://github.com/preservim/nerdtree
    Plug 'preservim/nerdtree'
    let g:NERDTreeWinPos='right' " Set position to write
    " Open file explorer when vim start but bring back cursor in main frame
    autocmd VimEnter * NERDTree | wincmd p
    " Exit Vim if NERDTree is the only window remaining in the only tab.
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

    " -------------------------------------------------------
    " Status line -- https://github.com/itchyny/lightline.vim
    Plug 'itchyny/lightline.vim'
    let g:lightline = {'colorscheme': 'darcula'}
    
    " ---------------------------------------------------
    " Fuzzy finder -- https://github.com/junegunn/fzf.vim
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

    " ----------------------------------------------------------------
    " Syntax  -- https://github.com/sheerun/vim-polyglot
    Plug 'sheerun/vim-polyglot'

    " --------------------------------------------------------
    " Completions -- https://github.com/ycm-core/YouCompleteMe
    Plug 'ycm-core/YouCompleteMe'

    " ----------------------------------
    " LSP -- https://github.com/w0rp/ale
    Plug 'dense-analysis/ale'

call plug#end()

" --------- "
" Shortcuts "
" --------- "
imap <C-s> <ESC>:w<CR>|          " [EDIT]   Save on <Control-s>
nmap <C-s> :w<CR>|               " [NORMAL] Save on <Control-s>
nmap <C-e> :NERDTreeFocus<CR>|   " [NORMAL] NERDTree: Focus file explorer with <Control-e>
nmap <C-p> :Files<CR>|           " [NORMAL] FZF: Search for files in current directory
nmap <C-f> :RG<CR>|              " [NORMAL] FZF: Search for text in current directory
nmap <C-b> :Buffers<CR>|         " [NORMAL] FZF: Browse opened buffers
" ------------------------ "
" General UI configuration "
" ------------------------ "
colorscheme darcula " Set colorscheme
set timeout timeoutlen=3000
set ttimeout ttimeoutlen=50
set number          " Enable line number
set laststatus=2    " Enable status line (0 = never, 1 = only if there are at least 2 windows, 2 = always -- see :help laststatus)
set encoding=utf-8  " Default encoding
set termguicolors   " Enable colors
set listchars=space:·,tab:->
set list
set backspace=indent,eol,start

