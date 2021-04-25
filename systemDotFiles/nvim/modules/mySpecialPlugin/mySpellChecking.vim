" ==========================================================
"
" █▀▀ █▀▀█ █▀▀ █░░ █░░ 　 █▀▀ █░░█ █▀▀ █▀▀ █░█ ░▀░ █▀▀▄ █▀▀▀
" ▀▀█ █░░█ █▀▀ █░░ █░░ 　 █░░ █▀▀█ █▀▀ █░░ █▀▄ ▀█▀ █░░█ █░▀█
" ▀▀▀ █▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ 　 ▀▀▀ ▀░░▀ ▀▀▀ ▀▀▀ ▀░▀ ▀▀▀ ▀░░▀ ▀▀▀▀
"
" =========================================================
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" Current configuration I am using <leader>a + w --> to get speel correction
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
"vmap <leader>a <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

