" Set some junk
" set wildignore+=*/builds*

" Emulate bundles, allow plugins to live independantly. Easier to manage.
call pathogen#runtime_append_all_bundles()
call pathogen#infect()
call pathogen#helptags()

" Set syntax highlighting options.
set t_Co=256
set linespace=1
syntax on
set guifont=Consolas:h14
colorscheme molokai
set lazyredraw

" PRESENTATIONS

" set guifont=Consolas:h32
" colorscheme zellner

if has("gui_running")
  set guioptions=egmt
  set guioptions-=r
  set guioptions-=l
  set guioptions-=b
endif

" Change mapleader
let mapleader=","

" Local dirs
set backupdir=~/.vim/backups
set directory=~/.vim/swaps


set autoindent " Copy indent from last line when starting new line.
set colorcolumn=80 " mark col 80
set backspace=indent,eol,start
set cursorline " Highlight current line
set diffopt=filler " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set encoding=utf-8 nobomb " BOM often causes trouble
set esckeys " Allow cursor keys in insert mode.
set expandtab " Expand tabs to spaces
set ignorecase
set smartcase
set hidden " When a buffer is brought to foreground, remember undo history and marks.
set history=1000 " Increase history from 20 default to 1000
set hlsearch " Highlight searches
set incsearch " Highlight dynamically as pattern is typed.
set laststatus=2 " Always show status line
set magic " Enable extended regexes.
set nocompatible " Make vim more useful
set noerrorbells " Disable error bells.
set nostartofline
set noshowmode
set nu " Enable line numbers.
set report=0 " Show all changes.
set ruler " Show the cursor position
set scrolloff=3 " Start scrolling three lines before horizontal border of window.
set shiftwidth=2 " The # of spaces for indenting.
set shortmess=I " Don't show the intro message when starting vim.
set showmode " Show the current mode.
set showtabline=2 " Always show tab bar.
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
set tabstop=2
set softtabstop=2 " Tab key results in 2 spaces
set title " Show the filename in the window titlebar.
set ttyfast " Send more characters at a given time.
set wildchar=<TAB> " Character for CLI expansion (TAB-completion).
set wildmenu " Hitting TAB in command mode will show possible completions above command line.
set wildmode=list:longest " Complete only until point of ambiguity.

set wrap
set textwidth=79
set formatoptions=qrn1

" Speed up viewport scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Remap arrow keys
" inoremap <Left>  <NOP>
" inoremap <Right> <NOP>
" inoremap <Up>    <NOP>
" inoremap <Down>  <NOP>

" Sudo write (,W)
noremap <leader>W :w !sudo tee %<CR>

" Remap :W to :w
command W w

" Toggle show tabs and trailing spaces (,c)
set lcs=tab:›\ ,trail:·,eol:↴,nbsp:_
set fcs=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>

" Clear last search (,cs)
map <leader>cs <Esc>:noh<CR>

" Indent/unident block (,]) (,[)
nnoremap <leader>] >i{<CR>
nnoremap <leader>[ <i{<CR>

" Paste toggle (,p)
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>

" Nerdtree (,n)
map <leader>n :NERDTreeToggle<CR>

" Buffer navigation (,,) (,]) (,[) (,ls)
map <Leader>, <C-^>
:map <Leader>] :bnext<CR>
:map <Leader>[ :bprev<CR>
map <Leader>ls :buffers<CR>
map <leader>b :b#<cr>

" Close Quickfix window (,cq)
map <leader>cq :cclose<CR>

" Yank from cursor to end of line
nnoremap Y y$

" Insert newline
map <leader><Enter> o<ESC>

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
    exec ':%s/ \+$//gc'
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>

" Save and restore folds
" :au BufWinLeave * mkview
" :au BufWinEnter * silent loadview

" Fix page up and down
map <PageUp> <C-U>
map <PageDown> <C-D>
imap <PageUp> <C-O><C-U>
imap <PageDown> <C-O><C-D>

" open file under cursor in new window
map <leader>gf <C-w>gf

" filetype plugin indent on
:filetype on
filetype plugin on

" Restore cursor position
autocmd! BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Markdown
autocmd! BufRead *.mkd set ai formatoptions=tcroqn2 comments=n:> ft=markdown
autocmd! BufRead *.md set ai formatoptions=tcroqn2 comments=n:> ft=markdown
autocmd! BufRead *.mdown set ai formatoptions=tcroqn2 comments=n:> ft=markdown
autocmd! BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:> ft=markdown

" CSS3
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.css set ft=css syntax=css

" HTML5
au BufRead,BufNewFile *.html set ft=html syntax=html
au BufRead,BufNewFile *.hbs set ft=html syntax=html
au BufRead,BufNewFile *.mustache set ft=html syntax=html
au BufRead,BufNewFile *.haml set ft=haml

au BufRead,BufNewFile *.js set ft=javascript syntax=javascript
au BufRead,BufNewfile *.rb set ft=ruby syntax=ruby

autocmd! BufWritePre * :%s/\s\+$//e

" when vimrc is edited, reload it
autocmd! bufwritepost .gvimrc source $MYGVIMRC
autocmd! bufwritepost .vimrc source $MYVIMRC

map <leader>ev :e $MYVIMRC<cr>

set autoread
set visualbell
set undolevels=999
set ignorecase
set smartcase
set nobackup
set nowritebackup
set noswapfile

if v:version >= 703
    " undo - set up persistent undo
    set undofile
    set undodir=$HOME/.vim/undodir
endif

" auto complete {} indent and position the cursor in the middle line
inoremap {<CR>  {<CR>}<Esc>O
inoremap (<CR>  (<CR>)<Esc>O
inoremap [<CR>  [<CR>]<Esc>O

" cycle between buffers
map <right> :bn<cr>
map <left> :bp<cr>
map <leader>b :b#<cr>

" when vimrc is edited, reload it
autocmd! bufwritepost .gvimrc source $MYGVIMRC
autocmd! bufwritepost .vimrc source $MYVIMRC

nmap <F6> :set invnumber<CR>
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
