" ========== General ==========
" Pathogen
execute pathogen#infect()

" Colors
colorscheme gendx

" ========== Settings ==========
set noerrorbells                " No beeps
set number                      " Show line numbers
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set nowritebackup
set splitbelow                  " Split horizontal windows below to the current windows
set ruler                       " Show cursor coordinates
set ttyfast
set lazyredraw

" No TABS please
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
syntax on
filetype indent plugin on

" Search
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Blame unwanted spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


" ========== OCaml ==========
" Indenting
autocmd FileType ocaml :setlocal sw=2 ts=4 sts=2

" Ocp-indent
set rtp^="~/.opam/system/share/ocp-indent/vim"


" ========== Scala ==========
" Indenting
autocmd FileType scala :setlocal sw=2 ts=4 sts=2


" ========== Rust ==========
" Rustfmt
let g:rustfmt_autosave = 1

