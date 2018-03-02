
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

" Tabs and soaces. No tabs!
set expandtab
set shiftwidth=2
set softtabstop=2

" line numbers
set relativenumber
set number

" Searching related stuff
set hlsearch " highlight all matches
set incsearch " search on each character
" Press \ to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Bslash> :nohlsearch<Bar>:echo<CR>
set ignorecase    " with combination of smartcase!
set smartcase     " /hello will match HeLlO and hello, /hEllo will only match hEllo

:let mapleader = " "


syntax enable


if $TERM == "xterm-256color"
  set t_Co=256
endif




" access global clipboard through ctrl-shift-c/v
imap <C-S-v> <Esc>"+p
vmap <C-S-c> "+y


" Misc editing options
" Switch on spelling
setlocal spell spelllang=en_us
:hi SpellBad ctermfg=red ctermbg=gray cterm=underline

" Limit line width
set tw=100
set fo+=t
set colorcolumn=100

" Move display lines in wrapped text
set virtualedit=
noremap  <buffer> <silent> <Up>   gk
noremap  <buffer> <silent> <Down> gj
noremap  <buffer> <silent> <Home> g<Home>
noremap  <buffer> <silent> <End>  g<End>
inoremap <buffer> <silent> <Up>   <C-o>gk
inoremap <buffer> <silent> <Down> <C-o>gj
inoremap <buffer> <silent> <Home> <C-o>g<Home>
inoremap <buffer> <silent> <End>  <C-o>g<End>

"Emacs like bindings fro home and end
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$

" Add snippets
set runtimepath+=~/dotfiles/vim_snippets
set runtimepath+=~/dotfiles/vim_snippets_fzi
set runtimepath+=~/dotfiles/vim_snippets_ros


autocmd BufNewFile, BufRead *.launch setfiletype xml
set wildmode=longest,list,full
set wildmenu


" Disable arrow keys
noremap <up> <C-w><up>
noremap <down> <C-w><down>
noremap <left> <C-w><left>
noremap <right> <C-w><right>



source ~/.vim/plugin/plugins.vim

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

"  settings
set guioptions-=m  "remove menu bar

let g:load_doxygen_syntax=1
