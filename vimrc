" ========== General ==========
" Pathogen
execute pathogen#infect()
call pathogen#helptags()

" Colors
colorscheme gendx

" More colors for GNOME terminal
if $TERM == 'xterm'
  set t_Co=256
endif

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
set list                        " show invisible characters
set listchars=tab:>·,nbsp:·     " but only show tabs and non-breakable space

" No TABS please
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab

" Search
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" ========== Key bindings ==========
" Do not show stupid q: window
map q: :q
" Clear last search highlighting
nnoremap <C-L> :noh<CR><C-L>

" ========== Syntax ==========
syntax on
filetype indent plugin on

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


" ========== Bundles ==========
set updatetime=250              " Faster update time for gitgutter
let g:loaded_zip = 1            " No unzip thanks
let g:loaded_gzip = 1           " No ungzip thanks
" Auto-complete top to bottom
" TODO: Behavior equivalent to reverse list of <C-P> ??
let g:SuperTabDefaultCompletionType = "<C-N>"
set completeopt=menuone,preview " Show menu even with only one match


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

