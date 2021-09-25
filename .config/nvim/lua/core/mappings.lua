-- Basics Configurations
-- Following: https://youtu.be/ppMX4LHIuy4
-- There are three types of configuration options
-- 1.) Global optoins (vim.o)
-- 2.) Local to window (vim.wo)
-- 3.) Local to buffer (vim.bo)

-- Adding some configurations
-- How to know to which configuration use :h expandtab
-- My Leader key
vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2

vim.g.mapleader =  ' '
-- Set using (vim.api.nvim_set_keymap({mode}, {keymap}, {mapped to}, {options}))
-- Using Ctrl-s to save
local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true }

keymap('n', '<c-s>', ':w<CR>', {})
keymap('i','<c-s>','<Esc>:w<CR>a',{})
-- Using Ctrl-jhkl to navigate splits (buffers)
keymap('n','<c-j>','<c-w>k', opts)
keymap('n','<c-h>','<c-w>h', opts)
keymap('n','<c-k>','<c-w>j', opts)
keymap('n','<c-l>','<c-w>l', opts)

-- Explorer with Nvim-tree
vim.api.nvim_set_keymap('n','<Leader>e',':NvimTreeToggle<CR>',{})
-- Remove highlighting after searching
vim.api.nvim_set_keymap('n','<Leader>h',':nohlsearch<CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('v','<Leader>vh',':nohlsearch<CR>',{noremap = true, silent = true})
--vim.api.nvim_set_keymap('n','<Leader>h',':set hlsearch!<CR>',{noremap = true, silent = true})
-- Setting for the space key
vim.api.nvim_set_keymap('n','<Leader>','<NOP>',{noremap = true, silent = true})

-- Better indenting using (<) and (>)
vim.api.nvim_set_keymap('v','<','<gv',{noremap = true, silent = true})
vim.api.nvim_set_keymap('v','>','>gv',{noremap = true, silent = true})

-- Alternative to Escape Key
vim.api.nvim_set_keymap('i','jk','<Esc>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('i','kj','<Esc>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('i','jj','<Esc>',{noremap = true, silent = true})

-- Tab switch buffers
vim.api.nvim_set_keymap('n','<TAB>',':bnext<CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n','<S-TAB>',':bprevious<CR>',{noremap = true, silent = true})

-- Move/selected line / block of text in visual mode
vim.api.nvim_set_keymap('x','K',':move \'<-2<CR>gv-gv',{noremap  = true, silent = true})
vim.api.nvim_set_keymap('x','J',':move \'>+2<CR>gv-gv',{noremap  = true, silent = true})
vim.api.nvim_set_keymap('n','K',':move .-2<CR>==',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n','J',':move .+1<CR>==',{noremap = true, silent = true})

-- yank to the end of a line
vim.api.nvim_set_keymap('n','Y','y$',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n','<leader>y','y$',{noremap = true, silent = true})

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
-- close all windows and exit from neovim
map('n', '<leader>q', ':qa<CR>', default_opts)

-- Telescope shortcuts
local cmd = vim.cmd     				-- execute Vim commands
cmd[[
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

]]

-- Rnvim (Ranger) for Nvim
map('n','<Leader>r',':RnvimrToggle<CR>',default_opts)

-- Floating terminal for nvim
map('n','<Leader>t',':FloatermToggle<CR>',default_opts)

-- Better nav for omni-complete
vim.api.nvim_set_keymap('i','<c-j>','(\"<C-n>\")',{noremap  = true, silent = true, expr= true})
vim.api.nvim_set_keymap('i','<c-k>','(\"<C-p>\")',{noremap  = true, silent = true, expr= true})


-- Show definition of function based on nvim-lspConfig instead of K
vim.api.nvim_set_keymap('n','<F1>',':lua vim.lsp.buf.hover()<CR>',{noremap  = true, silent = true})

-- Using undo-tree, all the  changes to yoooour current buffer
vim.api.nvim_set_keymap('n','<leader>u',':UndotreeToggle<CR>',{noremap  = true, silent = true})


-- Spell Checking fomr coc
--vim.api.nvim_set_keymap('x','<leader>a',':<Plug>(coc-codeaction-selected',{noremap = true, silent = true})
--vim.api.nvim_set_keymap('','','',{noremap = true, silent = true})
--vim.api.nvim_set_keymap('','','',{noremap = true, silent = true})
--vim.api.nvim_set_keymap('','','',{noremap = true, silent = true})

vim.cmd[[
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

]]

-- Source our init.lua file
vim.api.nvim_set_keymap('n','<space><CR>',':source ~/.config/nvim/init.lua<CR>',{noremap = true, silent = true})

-- Maximize and minimize windows
vim.api.nvim_set_keymap('n','<space>+',':vertical resize +5<CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n','<space>-',':vertical resize -5<CR>',{noremap = true, silent = true})


-- Allow to navigate the path (intellisense with the directory)
--vim.api.nvim_set_keymap('i','/','/<C-x><C-f>',{noremap = true, silent = true})
vim.cmd[[let g:clap_theme = 'material_design_dark']]
--vim.cmd[[autocmd FileType clap_input call compe#setup({ 'enabled': v:false }, 0)]]
--vim.cmd[[autocmd FileType clap_input let g:completion_enable_auto_pop = 0]]
--vim.cmd[[let g:clap_layout = { 'relative': 'editor' }]]
--vim.cmd[[let g:clap_layout = {'width': '10%', 'height': '13%', 'row': '33%', 'col': '17%'}]]
--vim.api.nvim_set_keymap('i','<leader>cf',"<cmd>Clap filer<CR>",{noremap = true, silent = true})

-- Replace with the register (you need a plugin  vim-scripts/ReplaceWithRegister)
-- vim.api.nvim_set_keymap('n','<leader>cr','<Plug>ReplaceWithRegisterOperator',{noremap  = true, silent = true})
-- vim.api.nvim_set_keymap('n','<leader>crr','<Plug>ReplaceWithRegisterLine',{noremap  = true, silent = true})
-- vim.api.nvim_set_keymap('x','<leader>cr','<Plug>ReplaceWithRegisterVisual',{noremap  = true, silent = true})
vim.cmd[[
    nmap <Leader>cr  <Plug>ReplaceWithRegisterOperator
    nmap <Leader>crr <Plug>ReplaceWithRegisterLine
    xmap <Leader>cr  <Plug>ReplaceWithRegisterVisual
]]

-- Using Vista with Clap to see all the functions definitions and their implementation,
vim.api.nvim_set_keymap('n','<leader>vt','<cmd>Clap tags<CR>',{noremap  = true, silent = true})
vim.api.nvim_set_keymap('i','<leader>vt','<cmd>Clap tags<CR>',{noremap  = true, silent = true})

-- close windows without affecting other buffers
vim.api.nvim_set_keymap('n','<leader>w','<cmd>Bdelete<CR>',{noremap  = true, silent = false})
