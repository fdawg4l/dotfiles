"
"
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
"
" Required:
set runtimepath+=/home/fahmed/.local/share/nvim/site/./repos/github.com/Shougo/dein.vim
"
" Required:
call dein#begin('/home/fahmed/.local/share/nvim/site/.')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" vim-go
call dein#add('fatih/vim-go')
" nerdtree
call dein#add('scrooloose/nerdtree')
" cntrlp
call dein#add('kien/ctrlp.vim')
" deoplete
call dein#add('Shougo/deoplete.nvim')
" tagbar
call dein#add('vim-scripts/Tagbar')
" vim-colors-solarized
call dein#add('altercation/vim-colors-solarized')
" vim-fugitive
call dein#add('tpope/vim-fugitive')

call dein#add('vim-syntastic/syntastic')

" You can specify revision/branch/tag.
call dein#add('Shougo/deol.nvim')
"
" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------

let g:golang_goroot="/usr/local/go"
let g:godef_split = 2
let mapleader="-"

" set expandtab
" set softtabstop=4
" set shiftwidth=4
" set nowrapscan
" set tags=tags

nnoremap # :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
set hlsearch
set nu
au FileType c cscope add cscope.out
syntax on
set noerrorbells
set novisualbell
" set t_vb=
nnoremap <C-H> :tabprevious<CR>
nnoremap <C-L> :tabnext<CR>
"
" " Trim trailing whitespace
au BufWritePre * :%s/\s\+$//e
"
" go tabbing
autocmd FileType go,golang setlocal ts=4
autocmd FileType go,golang setlocal sts=4
autocmd FileType go,golang setlocal sw=4

" vim-go
au FileType go au BufWritePre <buffer> retab
au FileType go nmap <Leader>r <Plug>(go-run)
au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap <Leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_bin_path = expand("~/.gotools")


"
"
" source /etc/vim/vimrc

set mouse = ""

set list lcs=trail:·,tab:»·

" path
set statusline+=%f
" flags
set statusline+=%m%r%h%w
" git branch
set statusline+=\ %{fugitive#statusline()}
" line x of y
set statusline+=\ [line\ %l\/%L]

" Colour
" hi StatusLine ctermfg=Black ctermbg=White
" hi StatusLineNC ctermfg=Black ctermbg=Grey

" neocomplete
let g:deoplete#enable_at_startup = 1
" cntrl + p path munging rediculousness
let g:ctrlp_working_path_mode = 0

nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

colorscheme industry
set background=light
hi clear Search
hi Search ctermfg=4 ctermbg=3 cterm=bold,underline

highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red
