let g:ale_completion_enabled = 1

call plug#begin()

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Konfekt/FastFold'
Plug 'mileszs/ack.vim'
Plug 'edkolev/tmuxline.vim'

Plug 'w0rp/ale'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'hzchirs/vim-material'

Plug 'tpope/vim-fugitive'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'airblade/vim-gitgutter'

Plug 'python-mode/python-mode'
Plug 'ternjs/tern_for_vim'
Plug 'reasonml/vim-reason-loader'

Plug 'elixir-editors/vim-elixir'
Plug 'JakeBecker/elixir-ls'
Plug 'ElmCast/elm-vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'haskell/haskell-ide-engine'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'sourcegraph/javascript-typescript-langserver'
Plug 'othree/html5.vim'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go'
Plug 'groenewege/vim-less'
Plug 'jrk/vim-ocaml'
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'redhat-developer/yaml-language-server'
Plug 'rust-lang/rust.vim'
Plug 'rust-lang/rls'
Plug 'elzr/vim-json'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'ocaml/merlin'
Plug 'OCamlPro/ocp-indent'
  
Plug 'slashmili/alchemist.vim'
Plug 'kchmck/vim-coffee-script'
" sudo pip install neovim
" sudo pip install greenlet==0.4.10

call plug#end()

set encoding=utf-8
let g:python3_host_prog = '/usr/bin/python'

set shell=/usr/bin/zsh
set nocompatible
let mapleader="\<Space>"

set t_Co=256

hi Normal ctermbg=NONE

filetype on
syntax enable

set shiftwidth=2
set tabstop=2

set termguicolors
set background=dark
colorscheme vim-material
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:airline_theme='deus'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,node_modules/**,*/node_modules/**,*/public/**,assets/develop/**,Godeps/**,*/Godeps/**,.cabal-sandbox

set cpoptions+=$
set noswapfile
set expandtab
set colorcolumn=100
set modifiable

au FileType python setl sw=4 sts=4 et
let g:airline#extensions#tmuxline#enabled = 0

let g:ale_linters = {
      \ 'haskell': ['hlint', 'hie-wrapper'],
      \ 'elixir': ['mix', 'credo', 'elixir-ls'],
      \ 'typescript': ['tslint']
      \ }

let g:ale_fixers = {
      \ 'elm': ['elm-format', 'trim_whitespace'],
      \ 'elixir': ['trim_whitespace'],
      \ 'go': ['gofmt', 'trim_whitespace'],
      \ 'haskell': ['hlint', 'brittany', 'trim_whitespace'],
      \ 'javascript': ['eslint', 'prettier', 'trim_whitespace'],
      \ 'json': ['prettier', 'trim_whitespace'],
      \ 'less': ['prettier', 'trim_whitespace'],
      \ 'ocaml': ['merlin', 'trim_whitespace'],
      \ 'reason': ['merlin', 'trim_whitespace'],
      \ 'typescript': ['prettier', 'tslint', 'trim_whitespace'],
      \ 'yaml': ['prettier', 'trim_whitespace'],
      \ }
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_changed = 0
let g:airline#extensions#ale#enabled = 1
let g:ale_elm_format_options = '--yes --elm-version=0.19'
let g:ale_haskell_hlint_executable = 'stack'

let g:LanguageClient_serverCommands = {
    \ 'elixir': ['elixir-ls'],
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'haskell': ['hie-wrapper'] ,
    \ 'javascript': ['tsserver', 'javascript-typescript-langserver'],
    \ }

let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

let g:pymode_lint_ignore='E501,E309,E731,E266'
let g:pymode_virtualenv = 1
let g:pymode_virtualenv_path = $VIRTUAL_ENV
let g:pymode_rope=0
let g:pymode_python='python3'

let g:go_fmt_command = "goimports"
let g:elm_format_autosave = 1
let g:rustfmt_autosave = 1

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
nnoremap <Leader>mf :execute "ALEFix mix_format"<CR>

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

augroup vimrc_autocmd

  " If you prefer the Omni-Completion tip window to close when a selection is
  " " made, these lines close it on movement in insert mode or when leaving
  " " insert mode
  autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
  autocmd InsertLeave * if pumvisible() == 0|pclose|endif

  autocmd BufNewFile,BufReadPost *.md set filetype=markdown

augroup END


let g:fugitive_gitlab_domains = [ 'https://git.2nd.io' ]
let g:gitgutter_escape_grep = 1
" will be included if lag occurs
" let g:gitgutter_realtime = 1


let g:ycm_python_binary_path = 'python'
let g:ycm_semantic_triggers = {
      \ 'elm' : ['.']
      \}

augroup myvimrchooks
	au!
  autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on


"------------------------------------------------------------
" Must have options {{{1

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Better command-line completion
set wildmode=longest,list,full
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline


"------------------------------------------------------------
" Usability options {{{1

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

"------------------------------------------------------------
" Mappings {{{1

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
