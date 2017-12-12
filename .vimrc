" ##### General #####
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
syntax on
filetype indent plugin on

"colors
colorscheme gendx

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" unwanted spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" highlight search
" set hlsearch


" ##### OCaml #####
" indenting
autocmd FileType ocaml :setlocal sw=2 ts=4 sts=2

" ocp-indent
set rtp^="~/.opam/system/share/ocp-indent/vim"


" ##### Scala #####
" indenting
autocmd FileType scala :setlocal sw=2 ts=4 sts=2


" ##### Rust #####
" pathogen
execute pathogen#infect()

" rustfmt
let g:rustfmt_autosave = 1

