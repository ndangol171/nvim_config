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
    " File Explorer -replaced by coc explore
    " Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
   
    " Quickscope for navigation
    Plug 'unblevable/quick-scope'
    " Sneak for better search
    Plug 'justinmk/vim-sneak'
    " Better commenting
    Plug 'tpope/vim-commentary'
    " status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " COC for language serve
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " colorizer
    Plug 'norcalli/nvim-colorizer.lua'
    " Rainbow Brackets
    Plug 'junegunn/rainbow_parentheses.vim'
    " Project manager
    Plug 'mhinz/vim-startify'
    " Keybinding pop ups
    Plug 'liuchengxu/vim-which-key'

    " Fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Themes
    " Plug 'jaredgorski/spacecamp'
    " Plug 'joshdick/onedark.vim'
    Plug 'ayu-theme/ayu-vim'
    " Plug 'NLKNguyen/papercolor-theme'

    " Git integrations
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    call plug#end()
