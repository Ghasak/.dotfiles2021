"
" ==================================================================================
"
" ▒█▀▀▀ █░░ █▀▀█ █▀▀█ ▀▀█▀▀ ░▀░ █▀▀▄ █▀▀▀ 　 ▀▀█▀▀ █▀▀ █▀▀█ █▀▄▀█ ░▀░ █▀▀▄ █▀▀█ █░░
" ▒█▀▀▀ █░░ █░░█ █▄▄█ ░░█░░ ▀█▀ █░░█ █░▀█ 　 ░▒█░░ █▀▀ █▄▄▀ █░▀░█ ▀█▀ █░░█ █▄▄█ █░░
" ▒█░░░ ▀▀▀ ▀▀▀▀ ▀░░▀ ░░▀░░ ▀▀▀ ▀░░▀ ▀▀▀▀ 　 ░▒█░░ ▀▀▀ ▀░▀▀ ▀░░░▀ ▀▀▀ ▀░░▀ ▀░░▀ ▀▀▀
"
" ==================================================================================
"
":FloatermSend                        " Send current line to the current floaterm (execute the line in the terminal)
":FloatermSend --name=ft1             " Send current line to the floaterm named ft1
":FloatermSend ls -la                 " Send `ls -la` to the current floaterm
":FloatermSend --name=ft1 ls -la      " Send `ls -la` to the floaterm named ft1
":23FloatermSend ...                  " Send the line 23 to floaterm
":1,23FloatermSend ...                " Send lines between line 1 and line 23 to floaterm
":'<,'>FloatermSend ...               " Send lines selected to floaterm(visual block selection are supported)
":%FloatermSend ...                   " Send the whole buffer to floaterm

" Make Ranger replace netrw and be the file explorer
"
"let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1


nmap <space>t :FloatermToggle<CR>
