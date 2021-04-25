" =======================================================================
" ▒█░▄▀ █▀▀ █░░█ 　 ▒█▀▄▀█ █▀▀█ █▀▀█ █▀▀█ ░▀░ █▀▀▄ █▀▀▀ 　 █▀▀█ █▀▀▄ █▀▀▄
" ▒█▀▄░ █▀▀ █▄▄█ 　 ▒█▒█▒█ █▄▄█ █░░█ █░░█ ▀█▀ █░░█ █░▀█ 　 █▄▄█ █░░█ █░░█
" ▒█░▒█ ▀▀▀ ▄▄▄█ 　 ▒█░░▒█ ▀░░▀ █▀▀▀ █▀▀▀ ▀▀▀ ▀░░▀ ▀▀▀▀ 　 ▀░░▀ ▀░░▀ ▀▀▀░
"
" ▒█▀▀█ █▀▀█ █▀▀▄ █▀▀ ░▀░ █▀▀▀ █░░█ █▀▀█ █▀▀█ ▀▀█▀▀ ░▀░ █▀▀█ █▀▀▄ █▀▀
" ▒█░░░ █░░█ █░░█ █▀▀ ▀█▀ █░▀█ █░░█ █▄▄▀ █▄▄█ ░░█░░ ▀█▀ █░░█ █░░█ ▀▀█
" ▒█▄▄█ ▀▀▀▀ ▀░░▀ ▀░░ ▀▀▀ ▀▀▀▀ ░▀▀▀ ▀░▀▀ ▀░░▀ ░░▀░░ ▀▀▀ ▀▀▀▀ ▀░░▀ ▀▀▀
" =======================================================================
autocmd BufLeave,FocusLost * silent! wall
syntax on
set modifiable
set exrc
set guicursor=
set relativenumber
set hidden
set nocompatible		" be improved, required
set nowrap
set number
set smartcase
set hlsearch
set noerrorbells
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set incsearch
set termguicolors
set scrolloff=8
"set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes

"##################################################
" This will allow me to yank into my clipboard
"##################################################
set clipboard=unnamedplus

"##################################################
"       Show the hidden files in NerdTree
"##################################################
let NERDTreeShowHidden=1

" Turn off Vim's <spell> as it highlights the same words.
set nospell
"set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
"set laststatus=2  " always display the status line"
" Give more space for displaying messages."
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable"
" delays and poor user experience."
set updatetime=50
" Don't pass messages to |ins-completion-menu|."
set shortmess+=c
set colorcolumn=80
let g:gruvbox_contrast_dark='hard'
" For spell-checking use <https://github.com/kamykn/spelunker.vim>
let g:enable_spelunker_vim = 1
if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'
filetype off			" required
filetype plugin indent on
syntax on
set colorcolumn=80
set background=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey
let g:indentguides_spacechar = '┆'
" =============================================
" Installing your JavaScript {After installing CocInstall coc-prettier
" https://x-team.com/blog/neovim-javascript/
" =============================================
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
" ALE for Linters and Fixers
let g:ale_fixers = {'javascript': ['prettier'], 'css': ['prettier']}
" Neoformat on save for JavaScript
autocmd BufWritePre *.js Neoformat
" You will need also :CocInstall coc-tsserver
"nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
map <silent> <C-t> :NERDTreeFocus<CR>

let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'default'
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags =1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1
let g:vim_be_good_log_file = 1
let g:vim_apm_log = 1
if executable('rg')
    let g:rg_derive_root='true'
endif
let loaded_matchparen = 1
let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_localrmdir='rm -r'
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_branch_actions = {
      \ 'rebase': {
      \   'prompt': 'Rebase> ',
      \   'execute': 'echo system("{git} rebase {branch}")',
      \   'multiple': v:false,
      \   'keymap': 'ctrl-r',
      \   'required': ['branch'],
      \   'confirm': v:false,
      \ },
      \ 'track': {
      \   'prompt': 'Track> ',
      \   'execute': 'echo system("{git} checkout --track {branch}")',
      \   'multiple': v:false,
      \   'keymap': 'ctrl-t',
      \   'required': ['branch'],
      \   'confirm': v:false,
      \ },
      \}

nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vsd :lua vim.lsp.util.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>

fun! GotoWindow(id)
    call win_gotoid(a:id)
    MaximizerToggle
endfun

" Debugger remaps
nnoremap <leader>m :MaximizerToggle!<CR>
nnoremap <leader>gc :GBranches<CR>
nnoremap <leader>ga :Git fetch --all<CR>
nnoremap <leader>grum :Git rebase upstream/master<CR>
nnoremap <leader>grom :Git rebase origin/master<CR>
nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>bs /<C-R>=escape(expand("<cWORD>"), "/")<CR><CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" greatest remap ever
vnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

" vim TODO
nmap <Leader>tu <Plug>BujoChecknormal
nmap <Leader>th <Plug>BujoAddnormal
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"

nnoremap <Leader>ww ofunction wait(ms: number): Promise<void> {<CR>return new Promise(res => setTimeout(res, ms));<CR>}<esc>k=i{<CR>

" Vim with me
nnoremap <leader>vwm :call ColorMyPencils()<CR>

inoremap <C-c> <esc>

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']


nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
fun! EmptyRegisters()
    let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
    for r in regs
        call setreg(r, [])
    endfor
endfun

" This mapping key for TERMINAL:MODE
" which will allow us to exit the terminal
" using the <ESC> key. You can exit the terminal buffer mode using
" --> in terminal --> exit --> then hit (q)
tnoremap <Esc> <C-\><C-n>:q!<CR>



fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" ES
com! W w

fun! ThePrimeagen_LspHighlighter()
    lua print("Testing")
    lua package.loaded["my_lspconfig"] = nil
    lua require("my_lspconfig")
endfun

" Terminal commands
" ueoa is first through fourth finger left hand home row.
" This just means I can crush, with opposite hand, the 4 terminal positions
"
" These functions are stored in harpoon.  A plugn that I am developing
nmap <leader>tu :call GotoBuffer(0)<CR>
nmap <leader>te :call GotoBuffer(1)<CR>
nmap <leader>to :call GotoBuffer(2)<CR>
nmap <leader>ta :call GotoBuffer(3)<CR>
nmap <leader>nn :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

com! SetLspVirtualText call ThePrimeagen_LspHighlighter()

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

augroup THE_PRIMEAGEN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
    " autocmd VimEnter * :VimApm

    autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
    " Fire Neovim
    au BufEnter github.com_*.txt set filetype=markdown
    au BufEnter txti.es_*.txt set filetype=typescript
augroup END

if executable('rg')
    let g:reg_derive_root='ture'
endif
let g:ctrlp_user_command= ['.git/', 'git --git-dir=%s/.git ls-files -oc --execlude-standard']
let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
" ag is fast enough that Ctrlp doesn't need to cache "
let g:ctrlp_use_caching = 0
let g:netrw_winsize = 25
let g:ctrlp_use_caching = 0
let g:netrw_winsize = 25
let g:ctrlp_use_caching = 0

"##################################################
"       Moving block of code easily
"##################################################
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

"##################################################
"      yank to the end of the line
"##################################################
nnoremap Y y$

"##################################################
" SuperTab like snippets' behavior.
"##################################################
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: "\<TAB>"

"##################################################
"               blamer.nvim
"           This for Git Repo to show
"           how has worte the code
"       https://github.com/APZelos/blamer.nvim
"##################################################
let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_show_in_visual_modes = 1
let g:blamer_show_in_insert_modes = 0
let g:blamer_template = '   <committer>  <committer-time>  <summary>'
let g:blamer_prefix = ' <  : '
highlight Blamer guifg=red

"##################################################
"               redrawtime
"               - Can cause some delay
"               for long files
"##################################################
set redrawtime=150000
set t_Co=256
"##################################################
"       This configuration for
"       the icon supprot with
"       plugin -> VimDevelCons
"##################################################
set encoding=UTF-8


"##################################################
"   Direct the fuzzy search to the one
"   installed on the Mac, not the one
"   comes with the package
"##################################################
set rtp+=/usr/local/bin/fzf "/usr/local/opt/fzf


let g:airline#extensions#branch#enabled = 1

"##################################################
"    Adding Client server
"##################################################
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['flow-language-server', '--stdio'],
    \ }

"##################################################
"       For rainbow parentheses improved
"##################################################
let g:rainbow_active = 1
"au FileType c,cpp,objc,objcpp call rainbow#load()
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

"##################################################
"   Setting for vim-context
"   This plugin is enabled by default. Set this variable to 0 to disable it.
"   You can then use :ContextEnable or :ContextToggle to enable it on demand.
"##################################################
let g:context_enabled = 0

