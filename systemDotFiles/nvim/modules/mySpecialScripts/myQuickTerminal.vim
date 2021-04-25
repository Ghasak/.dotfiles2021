"==============================================================================
"
" ▒█▀▀█ █░░█ ░▀░ █▀▀ █░█ 　 ▀▀█▀▀ █▀▀ █▀▀█ █▀▄▀█ ░▀░ █▀▀▄ █▀▀█ █░░
" ▒█░▒█ █░░█ ▀█▀ █░░ █▀▄ 　 ░▒█░░ █▀▀ █▄▄▀ █░▀░█ ▀█▀ █░░█ █▄▄█ █░░
" ░▀▀█▄ ░▀▀▀ ▀▀▀ ▀▀▀ ▀░▀ 　 ░▒█░░ ▀▀▀ ▀░▀▀ ▀░░░▀ ▀▀▀ ▀░░▀ ▀░░▀ ▀▀▀
"
"==============================================================================
" " This is a script will triger a terminal quickly than the FloatTerminal
" open new split panes to right and below
"Line: https://betterprogramming.pub/setting-up-neovim-for-web-development-in-2020-d800de3efacd
"==============================================================================
" set splitright
" set splitbelow
" " turn terminal to normal mode with escape
" tnoremap <Esc> <C-\><C-n>
" " start terminal in insert mode
" au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" " open terminal on ctrl+n
" function! OpenTerminal()
"   split term:zsh
"   resize 10
" endfunction
" nnoremap <Leader> n :call OpenTerminal()<CR>
"
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <Leader> n :call OpenTerminal()<CR>

