" Options
set clipboard+=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
filetype plugin indent on
syntax on


" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2

" Terminal colors
set t_Co=256

let term_program=$TERM_PROGRAM

if term_program !=? 'Apple_Terminal'
  set termguicolors
else
  if $TERM !=? 'xterm-256color'
    set termguicolors
  endif
endif

" Plugins
call plug#begin()
  " Appearance
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Utilities
  Plug 'sheerun/vim-polyglot'
  Plug 'jiangmiao/auto-pairs'
	Plug 'preservim/nerdtree'
  " Completion / linters / formatters
  Plug 'plasticboy/vim-markdown'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Git
  Plug 'airblade/vim-gitgutter'
call plug#end()

" Plugins Configs
let g:airline_powerline_fonst = 1
let g:airlin#entensions#tabline#enabled = 1
let NERDTreeShowHidden=1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:tex_conceal = ''
let g:vim_markdown_math = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['tsx=typescriptreact']
