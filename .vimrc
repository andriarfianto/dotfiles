" general require
set smartindent
set relativenumber
set encoding=utf-8
set showcmd
set incsearch
set updatetime=250
set textwidth=120
set background=dark
set laststatus=2
set t_Co=256
set term=screen-256color
set autoindent
set hlsearch

" whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" searching
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital

" other require
colorscheme Tomorrow-Night
let mapleader = ","
syntax enable
imap jj <Esc>

" Pathogen
execute pathogen#infect('~/.vim/bundle/syntastic{}')
syntax on
filetype off

" Statusline syntax
set statusline=%f\ %=col:%2c\ line:%2l
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

" nmap config
nmap <space> :
nmap <Leader>f :bn<cr>
nmap <Leader>d :bp<cr>
nmap <Leader>s :bd<cr>
nmap <Leader><CR> :nohlsearch<cr>

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" CtrlP
nmap <Leader>b :CtrlPBuffer<cr>
nmap <Leader>r :CtrlPMRUFiles<cr>

" open .vimrc
nmap <Leader>c :e $MYVIMRC<cr>
nmap <Leader>t :NERDTreeToggle<cr>
nmap <Leader>n :NERDTreeFind<cr>

nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set nocompatible               " be iMproved
filetype off                   " required!

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree' 
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
Plugin 'kien/ctrlp.vim' 
Plugin 'rstacruz/sparkup'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'mattn/gist-vim'
Plugin 'Yggdroot/indentLine' 
Plugin 'scrooloose/nerdcommenter' 
Plugin 'tpope/vim-heroku'
Plugin 'tpope/vim-fugitive'
Plugin 'markcornick/vim-vagrant'
Plugin 'tpope/vim-vinegar'
Plugin 'ervandew/supertab'
Plugin 'Raimondi/delimitMate'               " provides insert mode auto-completion for quotes, parens, brackets, etc. 
Plugin 'tpope/vim-ragtag'                   " A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more
Plugin 'Valloric/MatchTagAlways'            " Always highlight enclosing tags
Plugin 'majutsushi/tagbar'                  " TagBar
Plugin 'Xuyuanp/nerdtree-git-plugin'        " NerdTree GIT support
Plugin 'bling/vim-bufferline'               " Buffer info

" Language 
" text markup family:
Plugin 'tpope/vim-markdown'                 " Github flavored markdown syntax

" php family:
Plugin 'StanAngeloff/php.vim'               " Syntax highliting
Bundle 'joonty/vim-phpqa.git' 

" html & css family:
Plugin 'othree/html5.vim'                   " HTML5
Bundle "lepture/vim-css" 
Plugin 'mattn/emmet-vim'
Plugin 'indenthtml.vim'
Plugin 'cakebaker/scss-syntax.vim'          " SCSS
Plugin 'mustache/vim-mustache-handlebars'

" javascript family:
Plugin 'pangloss/vim-javascript'            " Javascript
Plugin 'mxw/vim-jsx'                        " Syntax highlighting and indenting for JSX THAN IN
Plugin 'kchmck/vim-coffee-script'           " Coffescript
Plugin 'leshill/vim-json'                   " Json
Plugin 'chunqian/vim-vue'                   " Vue
Plugin 'moll/vim-node'                      " Nodejs

"python
Plugin 'klen/python-mode'

" blade 
Plugin 'jwalton512/vim-blade'      

" colorschemes
Plugin 'tpope/vim-unimpaired'

" Tmuxline
Bundle 'edkolev/tmuxline.vim'


" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" NerdTree Git Plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
let NERDTreeShowHidden = 1
let NERDTreeHijackNetrw = 0

" gitgutter
let g:gitgutter_escape_grep = 1
let g:gitgutter_enabled = 1
let g:gitgutter_sign_column_always = 1
let g:gitgutter_max_signs = 50
let g:gitgutter_map_keys = 0

" indentline
let g:indentLine_color_term = 239

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'

" checkers with linter
let g:syntastic_html_checkers = ['jshint']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

"special features for php
let php_htmlInStrings = 1  "Syntax highlight HTML code inside PHP strings.
let php_sql_query = 1      "Syntax highlight SQL code inside PHP strings.

" markdown language
let g:markdown_fenced_languages = ['javascript', 'ruby', 'sh', 'html', 'vim', 'json', 'diff']
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_minlines = 100

" set indentation php
autocmd Filetype php setlocal shiftwidth=4 tabstop=4

" if PHP File
autocmd FileType php map <C-s> :Php<CR>
autocmd FileType php map <C-a> :Phpcs<CR>

" Syntax highlight Php
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

" Php linter Ctrl+Shift+s
autocmd FileType php map <C-S-s> :Php<CR>
autocmd FileType php map <C-S-a> :Phpcs<CR>
 
" for blade
autocmd BufNewFile,BufReadPost *.blade.php set filetype=blade
 
" Auto-remove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e

" for vue
autocmd BufNewFile,BufRead *.vue set filetype=html

" haml file
au! BufRead,BufNewFile *.haml setfiletype haml 

" jquery file
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
