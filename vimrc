set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber

set laststatus=2
set noshowmode

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c


call plug#begin('~/.vim/plugged')

" Temas
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
" kite config
" let g:kite.supported_languages = ['javascript']

" Defino mi techa lider 
let mapleader=" "

" Defino el mapiing de mi shortcut para el plugin
nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <c-space> to trigger completion.
if &filetype == 'javascript'
  inoremap <c-space> <C-x><C-u>
else 
  inoremap <silent><expr> <c-space> coc#refresh()
endif

autocmd FileType javascript let b:coc_suggest_disable = 1;
autocmd FileType scss setl iskeyword+=@-@
