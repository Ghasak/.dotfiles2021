
" ===========================================================================================
"
" ▒█░░▒█ █░░█ █▀▀▄ █▀▀▄ █░░ █▀▀ 　 ▒█▀▀█ █░░ █░░█ █▀▀▀ 　 ▒█▀▄▀█ █▀▀█ █▀▀▄ █▀▀█ █▀▀▀ █▀▀ █▀▀█
" ░▒█▒█░ █░░█ █░░█ █░░█ █░░ █▀▀ 　 ▒█▄▄█ █░░ █░░█ █░▀█ 　 ▒█▒█▒█ █▄▄█ █░░█ █▄▄█ █░▀█ █▀▀ █▄▄▀
" ░░▀▄▀░ ░▀▀▀ ▀░░▀ ▀▀▀░ ▀▀▀ ▀▀▀ 　 ▒█░░░ ▀▀▀ ░▀▀▀ ▀▀▀▀ 　 ▒█░░▒█ ▀░░▀ ▀░░▀ ▀░░▀ ▀▀▀▀ ▀▀▀ ▀░▀▀
"
" ===========================================================================================
" Using Plugin Install
" =============================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/Vundle-plug-manager

call vundle#begin("~/.config/nvim/Vundle-plug-manager-packages")

        Bundle 'gmarik/vundle'
        Bundle 'scrooloose/syntastic'
        Bundle 'dbeniamine/cheat.sh-vim'
        Plugin 'Shougo/deoplete.nvim'
          Plugin 'roxma/nvim-yarp'
          Plugin 'roxma/vim-hug-neovim-rpc'
          if !has('nvim')
        endif

        Plugin 'Shougo/neosnippet.vim'
        Plugin 'Shougo/neosnippet-snippets'

        " Track the engine.
        Plugin 'SirVer/ultisnips'

        " Snippets are separated from the engine. Add this if you want them:
        Plugin 'honza/vim-snippets'
        " Setup startfiy
        Plugin 'mhinz/vim-startify'
        Plugin 'morhetz/gruvbox'
        " Install Rnvim
        Plugin 'kevinhwang91/rnvimr'
        " Install COC Stable Version
        Plugin 'neoclide/coc.nvim', {'branch': 'release'}

        " Installing the Air-line
        " https://github.com/vim-airline/vim-airline
        Plugin 'vim-airline/vim-airline'
        Plugin 'vim-airline/vim-airline-themes'
        " Adding Icons support
        Plugin 'ryanoasis/vim-devicons'
        " Installing FLoating Terminal
        Plugin 'voldikss/vim-floaterm'

        " Install NeoFormatter"
        Plugin 'sbdchd/neoformat'

        " Installing Blame for Git to show
        " Who wrote the code
        Plugin 'APZelos/blamer.nvim'
        "Plugin 'f-person/git-blame.nvim'
        " Undo tree to show you
        " last changes on your file
        Plugin 'mbbill/undotree'

        " Fuzzy Search "
        Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plugin 'junegunn/fzf.vim'

        "Ctrl + P Plugin
        Plugin 'ctrlpvim/ctrlp.vim'

        Plugin 'nvim-lua/popup.nvim'
        Plugin 'nvim-lua/plenary.nvim'
        Plugin 'nvim-telescope/telescope.nvim'

        " Configurations for Git in Status bar and other
        " functionality
        Plugin 'tpope/vim-fugitive'
        Plugin 'airblade/vim-gitgutter'
        Plugin 'mhinz/vim-signify'

        "Codi running REPL on fly
        "support python node, ..etc"
        Plugin 'metakirby5/codi.vim'

        "Javascript Plugin, replacing coc-tsserver "
        Plugin 'HerringtonDarkholme/yats.vim'
        Plugin 'maxmellon/vim-jsx-pretty'
        Plugin 'yuezk/vim-js'
        " Adding a rainbow colors for your parentheses"
        Plugin 'frazrepo/vim-rainbow'

        " Adding NerdTree"
        "Plugin 'lambdalisue/fern.vim'
        "
        " Adding Context Vim
        Bundle 'wellle/context.vim'
        " Adding indentation for python and other scirpts"
        Plugin 'Yggdroot/indentLine'

        "Better view for Markup-files"
        Plugin 'npxbr/glow.nvim', {'do': ':GlowInstall'}
        Plugin 'kyazdani42/nvim-web-devicons'
        Plugin 'romgrk/barbar.nvim'
        " This plug for jupyter notebook integration
        " in terminal
        Plugin 'jupyter-vim/jupyter-vim'

        "change surrounding a solution worth to be tried"
        " https://github.com/tpope/vim-surround
        Plugin 'tpope/vim-surround'


call vundle#end()            " required

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
" let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


set background=dark
colorscheme gruvbox


