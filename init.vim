"  TODO:
" 1. Find and autocomplete that works with systemverilog
" 2. check to see if the following are being used:
" 	vhda/*
" 3. figure out NerdTree keybinds
" 4. add some way to call pip3 install --user jedi --upgrade
" 5. Do I have to add specific ALE fixers/linters?


syntax on
"filetype on

set nocompatible
set modeline
set expandtab
set tabstop=4
set shiftwidth=4
set foldmethod=indent
set nofoldenable
set relativenumber
set diffopt+=vertical
set cursorline
set number

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'dense-analysis/ale'
Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'deoplete-plugins/deoplete-jedi'
Plugin 'deoplete-plugins/deoplete-clang'
"Plugin 'vhda/verilog_systemverilog.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'autozimu/LanguageClient-neovim'
Plugin 'majutsushi/tagbar' " e.g. nmap <F8> :TagBarToggle<CR>   can also work w SV, look @gith



call vundle#end()

let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('candidate_marks',
                      \ ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'])
                inoremap <expr>1       pumvisible() ?
                \ deoplete#insert_candidate(0) : '1'
                inoremap <expr>2       pumvisible() ?
                \ deoplete#insert_candidate(1) : '2'
                inoremap <expr>3       pumvisible() ?
                \ deoplete#insert_candidate(2) : '3'
                inoremap <expr>4       pumvisible() ?
                \ deoplete#insert_candidate(3) : '4'
                inoremap <expr>5       pumvisible() ?
                \ deoplete#insert_candidate(4) : '5'
		inoremap <expr>6       pumvisible() ?
                \ deoplete#insert_candidate(5) : '6'
		inoremap <expr>7       pumvisible() ?
                \ deoplete#insert_candidate(6) : '7'
		inoremap <expr>8       pumvisible() ?
                \ deoplete#insert_candidate(7) : '8'
		inoremap <expr>9       pumvisible() ?
                \ deoplete#insert_candidate(8) : '9'
		inoremap <expr>0       pumvisible() ?
                \ deoplete#insert_candidate(9) : '0'

let NERDTreeShowHidden = 1





