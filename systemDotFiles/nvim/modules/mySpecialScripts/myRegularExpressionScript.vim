"
"
"
" source : https://irian.to/blogs/vim-fzf/
" This is a regular expression definition to exclude
" the file name from the searching
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
nnoremap <silent> <Leader>f Rg<CR>

"set grepprg=rg\ --vimgrep\ --smart-case\ --follow



