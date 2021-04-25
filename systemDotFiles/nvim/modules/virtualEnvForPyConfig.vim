" =======================================================================
"
" ▒█▀▄▀█ █░░█ 　 ▒█░░▒█ ░▀░ █▀▀█ ▀▀█▀▀ █░░█ █▀▀█ █░░ ▒█▀▀▀ █▀▀▄ ▀█░█▀
" ▒█▒█▒█ █▄▄█ 　 ░▒█▒█░ ▀█▀ █▄▄▀ ░░█░░ █░░█ █▄▄█ █░░ ▒█▀▀▀ █░░█ ░█▄█░
" ▒█░░▒█ ▄▄▄█ 　 ░░▀▄▀░ ▀▀▀ ▀░▀▀ ░░▀░░ ░▀▀▀ ▀░░▀ ▀▀▀ ▒█▄▄▄ ▀░░▀ ░░▀░░
"
" =======================================================================
" " Note
" If you use virtual environments I highly suggest putting these varibles in your config
" I recommend putting this in paths.vim in the general directory
" https://www.chrisatmachine.com/Neovim/02-vim-general-settings/
"let g:python3_host_prog = expand("<path to python with pynvim installed>")
"let g:python3_host_prog = expand("~/.miniconda/envs/neovim/bin/python3.8") " <- example
let g:python3_host_prog = expand("~/opt/anaconda3/bin/python") " <- example
"let g:node_host_prog = expand("<path to node with neovim installed>")
"let g:node_host_prog = expand("~/.nvm/versions/node/v12.16.1/bin/node") " <- example
"let g:node_host_prog = expand("~/.nvm/versions/node/v15.7.0/bin/node") " <- example
let g:node_host_prog ="/usr/local/Cellar/node/15.14.0/bin/node"
