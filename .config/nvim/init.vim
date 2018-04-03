" Setup python support
let g:python_host_prog = $HOME.'/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = $HOME.'/.pyenv/versions/neovim3/bin/python'

call plug#begin('~/.local/share/nvim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'slashmili/alchemist.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'

Plug 'airblade/vim-gitgutter'

" Themes
" Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'

call plug#end()

map <C-n> :NERDTreeToggle<CR>

" colorscheme base16-solarized-dark
colorscheme gruvbox
set background=dark

let g:airline_theme='base16'
let g:deoplete#enable_at_startup = 1

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" UI
set number " show line numbers
set showcmd " show command in bottom bar (maybe useless because of airline?)
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to.
set showmatch " highlight matching [{()}]

" Search
set incsearch " search as characters are entered
set hlsearch " highlight matches

" Whitespaces
match Error /\s\+$/
match Error /^\t\+/

" Indentation configuration
set tabstop=2 shiftwidth=2 expandtab

" airline configuration
let g:airline_powerline_fonts = 1

" <TAB> to navigate autocomplete popups
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
