
" ========================================================================
"
" ▒█▀▀█ █░░ █░░█ █▀▀▀ ░▀░ █▀▀▄ 　 ▒█▀▄▀█ █▀▀█ █▀▀▄ █▀▀█ █▀▀▀ █▀▀ █▀▀█ █▀▀
" ▒█▄▄█ █░░ █░░█ █░▀█ ▀█▀ █░░█ 　 ▒█▒█▒█ █▄▄█ █░░█ █▄▄█ █░▀█ █▀▀ █▄▄▀ ▀▀█
" ▒█░░░ ▀▀▀ ░▀▀▀ ▀▀▀▀ ▀▀▀ ▀░░▀ 　 ▒█░░▒█ ▀░░▀ ▀░░▀ ▀░░▀ ▀▀▀▀ ▀▀▀ ▀░▀▀ ▀▀▀
"
" ========================================================================
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/vim-plug-manager

call plug#begin('~/.config/nvim/vim-plug-manager-packages')

        Plug 'morhetz/gruvbox'
        " Stable version of coc
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        " Keeping up to date with master [ Currently I am using this ]
        "Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
        Plug 'preservim/nerdtree'
        " To exit you can use <esc> or <Ctrl+C>
        Plug 'ctrlpvim/ctrlp.vim'
        " Use release branch (recommend)
        " Git with nvim
        Plug 'tpope/vim-fugitive'
        Plug 'vim-airline/vim-airline'
        if has('nvim')

                Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        else
                Plug 'Shougo/deoplete.nvim'
                Plug 'roxma/nvim-yarp'
                Plug 'roxma/vim-hug-neovim-rpc'
        endif
        Plug 'christoomey/vim-tmux-navigator'
        Plug 'zchee/deoplete-jedi'
        Plug 'trevordmiller/nova-vim'
        Plug 'pangloss/vim-javascript'
        Plug 'mxw/vim-jsx'
        Plug 'w0rp/ale'
        "Plug 'puremourning/vimspector'
        Plug 'szw/vim-maximizer'
        Plug 'rust-lang/rust.vim'
        Plug 'tweekmonster/gofmt.vim'
        Plug 'vim-utils/vim-man'
        Plug 'mbbill/undotree'
        Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'stsewd/fzf-checkout.vim'
        Plug 'thaerkh/vim-indentguides'
        Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
        Plug 'kamykn/popup-menu.nvim'
        Plug 'ryanoasis/vim-devicons'
        Plug 'kamykn/spelunker.vim'
        " Searching for a word in the repo
        Plug   'eugen0329/vim-esearch'
        " This will show us the combintion of the keys that used
        " you need to set notimeout
        Plug 'liuchengxu/vim-which-key'
        " ====================================================
        "           Setup for JavaScript
        " ====================================================
        " Prettier with COC {CocInstall coc-prettier}
        Plug 'dense-analysis/ale'
        Plug 'sbdchd/neoformat'
        Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " this is for auto complete, prettier and tslinting
        let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']  " list of CoC extensions needed
        Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {
        " these two plugins will add highlighting and indenting to JSX and TSX files.
        Plug 'yuezk/vim-js'
        Plug 'HerringtonDarkholme/yats.vim'
        Plug 'maxmellon/vim-jsx-pretty'
        Plug 'honza/vim-snippets'
        " ====================================================
        "           Setup for R
        " ====================================================
        "Plulua require'colorizer'.setup()g 'jalvesaq/Nvim-R', {'branch': 'stable'}
        " List of plugins.
        " Make sure you use single quotes
        " Shorthand notation
        Plug 'jalvesaq/Nvim-R'
        Plug 'ncm2/ncm2'
        Plug 'roxma/nvim-yarp'
        Plug 'gaalcaras/ncm-R'
        Plug 'preservim/nerdtree'
        Plug 'Raimondi/delimitMate'
        "Plug 'itchyny/lightline.vim'
        Plug 'patstockwell/vim-monokai-tasty'
        Plug 'gaalcaras/ncm-R'
        " Optional: for snippet support
        Plug 'sirver/UltiSnips'
        " Configuration from : https://github.com/gaalcaras/ncm-R
        " Vim 8 only
        if !has('nvim')
            Plug 'roxma/vim-hug-neovim-rpc'
        endif
        " Optional: for snippet support
        " Further configuration might be required, read below
        "Plug 'sirver/UltiSnips'
        Plug 'ncm2/ncm2-ultisnips'
        " Optional: better Rnoweb support (LaTeX completion)
        Plug 'lervag/vimtex'
        Plug 'mhinz/vim-startify'
        Plug 'voldikss/vim-floaterm'
        Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
        " This is to accept incoming call by ssh and formulate it using my
        " own nvim configuration instead of copy my configuration to the
        " server
        Plug 'ojroques/vim-oscyank'
        " Plugin to show on git who has wrote this script
        Plug 'APZelos/blamer.nvim'

" Initialize plugin system
call plug#end()

set background=dark
colorscheme gruvbox


