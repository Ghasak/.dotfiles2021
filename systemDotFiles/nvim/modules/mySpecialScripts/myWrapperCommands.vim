
" ▒█░░▒█ █▀▀█ █▀▀█ █▀▀█ █▀▀█ ░▀░ █▀▀▄ █▀▀▀ 　 ▒█▀▀█ █▀▀█ █▀▄▀█ █▀▄▀█ █▀▀█ █▀▀▄ █▀▀▄
" ▒█▒█▒█ █▄▄▀ █▄▄█ █░░█ █░░█ ▀█▀ █░░█ █░▀█ 　 ▒█░░░ █░░█ █░▀░█ █░▀░█ █▄▄█ █░░█ █░░█
" ▒█▄▀▄█ ▀░▀▀ ▀░░▀ █▀▀▀ █▀▀▀ ▀▀▀ ▀░░▀ ▀▀▀▀ 　 ▒█▄▄█ ▀▀▀▀ ▀░░░▀ ▀░░░▀ ▀░░▀ ▀░░▀ ▀▀▀░
"
command! HOME Startify
command! MYFZF FloatermNew fzf
" There is also Regular Expression command :Rg
" Also from Telescope: <Leader> f + g or <Leader> f + f
command! MYRg FloatermNew --width=0.8 --height=0.8 rg
" Using XPLR
command! XPLR FloatermNew xplr
" Using lazygit
command! LAZYGIT FloatermNew lazygit

command! IPY FloatermNew ipython
command! IPY2 FloatermNew --wintype=normal --name=repl --position=right ipython

command! IPY3 FloatermNew --width=0.5 --wintype=vsplit --name=repl --position=right ipython && FloatermSend %autoindent

autocmd FileType javascript nnoremap <buffer> <F5> :w<esc>:FloatermNew node %<CR>
autocmd FileType c nnoremap <buffer> <F5> :w<esc>:FloatermNew gcc % && ./a.out && rm a.out<CR>
autocmd FileType cpp nnoremap <buffer> <F5> :w<esc>:FloatermNew g++ % && ./a.out && rm a.out<CR>
autocmd FileType python nnoremap <buffer> <F5> :w<esc>:FloatermNew ipython %<CR>
autocmd FileType typescript nnoremap <buffer> <F5> :w<esc>:FloatermNew ts-node %<CR>
"--width=0.5
" This will go to the setting directly without a need to open a new buffer
command! SETTING e $MYVIMRC

" Make it easy to update/reload vimrc
" source $MYVIMRC reloads the saved $MYVIMRC
nmap <Leader>s :source $MYVIMRC
" you can edit the init.vim aslo using
" OR USE THE COMMAND (SETTNG)
nmap <Leader>v :e $MYVIMRC

