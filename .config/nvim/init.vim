set guicursor=
let g:python3_host_prog = '/home/koen/.config/nvim/python_host/bin/python'
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim'

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-speeddating'

Plug 'justinmk/vim-sneak'

Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'

Plug 'othree/html5.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

colorscheme dracula

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set nohlsearch

"visual helpers
set number
set colorcolumn=80
set spell
hi clear SpellBad
hi SpellBad cterm=underline

let g:sneak#label = 1

"ale
let g:ale_lint_on_text_changed='normal'
let g:ale_set_highlights = 0
let g:ale_set_signs = 1
let g:airline#extensions#ale#enabled = 1

"deoplete
let g:deoplete#enable_at_startup = 1

"remove trailing space on save
autocmd BufWritePre * %s/\s\+$//e
"mappings
let g:mapleader="\<space>"
let g:maplocalleader="\\"

"general
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>T :terminal<CR>
nnoremap <leader><space> <C-w><C-w>
nnoremap <leader>h :split<CR>
nnoremap <leader>v :vsplit<CR>
"edit vim
nnoremap <leader>i :sp ~/.config/nvim/init.vim<CR><C-W>_
nnoremap <silent> <leader>I :source ~/.config/nvim/init.vim<CR>:filetype detect<CR>:exe ":echo 'init.vim reloaded'"<CR>
" fzf
nnoremap <leader>f :GFiles<CR>
nnoremap <leader>F :Files<CR>
nnoremap <leader>g :Buffers<CR>
nnoremap <leader>a :Ag<CR>
"python
nnoremap <leader>b mzIimport pdb; pdb.set_trace()<CR><ESC>`z:w<CR>
