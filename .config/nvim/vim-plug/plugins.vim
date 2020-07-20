" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{' 
    Plug 'jiangmiao/auto-pairs'
    
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'joshdick/onedark.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Comment shortcut plugin
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    Plug 'junegunn/rainbow_parentheses.vim'    
    
    " Git Plugins
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'APZelos/blamer.nvim'
    
    " Project Management
    Plug 'mhinz/vim-startify'
    Plug 'liuchengxu/vim-which-key'
    " Ranger
    Plug 'francoiscabrol/ranger.vim'
    Plug 'rbgrouleff/bclose.vim'
    " devicons for nerdtree
    Plug 'ryanoasis/vim-devicons'
    Plug 'honza/vim-snippets'
    " Colorizer for css
    Plug 'norcalli/nvim-colorizer.lua'
    " Markdown preview in browser
    Plug 'iamcco/mathjax-support-for-mkdp'
    Plug 'iamcco/markdown-preview.vim'
    " Plug 'vimwiki/vimwiki'
    Plug 'voldikss/vim-floaterm'
    Plug 'ChristianChiarulli/codi.vim'
    " Alternative to vimwiki
    " Plug 'fcpg/vim-waikiki'
    " Plug 'zxqfl/tabnine-vim'
    call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
