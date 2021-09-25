-----------------------------------------------------------
-- Neovim settings
--- General Neovim settings
-----------------------------------------------------------
-----------------------------------------------------------
-- Neovim API aliases
-----------------------------------------------------------
--local map = vim.api.nvim_set_keymap  -- set global keymap
local cmd = vim.cmd     				-- execute Vim commands
local exec = vim.api.nvim_exec 	-- execute Vimscript
local fn = vim.fn       				-- call Vim functions
local g = vim.g         				-- global variables
local opt = vim.opt         		-- global/buffer/windows-scoped options
-----------------------------------------------------------
-- General
-----------------------------------------------------------
opt.mouse = 'a'                 -- enable mouse support, clicking and scrolling, Now I use, option from my mac If you use iTerm, <<defaults write com.googlecode.iterm2 AlternateMouseScroll -bool true>>
opt.clipboard = 'unnamedplus'   -- copy/paste to system clipboard
opt.swapfile = false            -- don't use swapfile
cmd[[set guicursor=]]           -- This will keep the cursor form chaning.
g.gruvbox_invert_selection=0    -- In Visual Mode selection, turn-off multi-color, https://www.reddit.com/r/vim/comments/ejy7yp/how_would_you_tell_vim_to_change_the_visual/
--
-----------------------------------------------------------
--              Cursor shape
-----------------------------------------------------------
--cmd[[set guicursor=a:/iCursor-blinkon40-blinkoff40-blinkwait10]]   -- To change the  cursor options such as the size and blinking, not used at the moment
--cmd[[set guicursor=i-ci:ver30-iCursor-blinkon40-blinkoff40-blinkwait10]]   -- To change the  cursor options such as the size and blinking
-- (a) means all modes, (i) insert, (v) visual model, and iCursor is different from blcokCurosr see (:h guicurosr)
cmd[[set guicursor=a:ver50-iCursor-blinkon40-blinkoff40-blinkwait10]]   -- To change the  cursor options such as the size and blinking,

-----------------------------------------------------------
-- Configurations form my old vim script
-----------------------------------------------------------
opt.wrap = false
opt.relativenumber = true
opt.errorbells = false
opt.signcolumn = 'yes'
opt.cursorline = true
opt.ruler = true
opt.fileencoding = 'utf-8'
opt.pumheight = 10
opt.encoding = 'utf-8'
opt.updatetime = 300
opt.timeoutlen = 500
cmd[[set formatoptions-=cro]]    -- Stop newline continution of comments
opt.laststatus = 0
opt.backup = false               -- Recommended by COC
opt.writebackup = false          -- Recommended by COC
opt.showtabline = 2
opt.conceallevel = 0
opt.tabstop = 2
opt.shiftwidth =2
-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.syntax = 'enable'         -- enable syntax highlighting
opt.number = true             -- show line number
opt.showmatch = true          -- highlight matching parenthesis
opt.foldmethod = 'marker'     -- enable folding (default 'foldmarker')
opt.colorcolumn = '80'        -- line lenght marker at 80 columns
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- orizontal split to the bottom
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern

-- remove whitespace on save
cmd[[au BufWritePre * :%s/\s\+$//e]]

-- highlight on yank
exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup end
]], false)
-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true         -- enable background buffers
opt.history = 100         -- remember n lines in history
opt.lazyredraw = true     -- faster scrolling
opt.synmaxcol = 240       -- max column for syntax highlight
-- Added new options
opt.scrolloff      = 2    -- make scrolling better
opt.sidescroll     = 2    -- make scrolling better
opt.shiftwidth     = 2    -- set indentation width
opt.sidescrolloff  = 15   -- make scrolling better
-----------------------------------------------------------
-- Colorscheme
-----------------------------------------------------------
opt.termguicolors = true          -- enable 24-bit RGB colors
-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines
opt.autoindent = true
-- don't auto commenting new lines
cmd[[au BufEnter * set fo-=c fo-=r fo-=o]]

-- remove line lenght marker for selected filetypes
cmd[[
  autocmd FileType text,markdown,xml,html,xhtml,javascript setlocal cc=0
]]

-- 2 spaces for selected filetypes
cmd[[
  autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2
]]

-- 8 spaces for Go files
cmd[[autocmd FileType go setlocal shiftwidth=8 tabstop=8]]

-- IndentLine
--g.indentLine_setColors = 0  -- set indentLine color
--g.indentLine_char = '|'       -- set indentLine character

-- disable IndentLine for markdown files (avoid concealing)
cmd[[
	autocmd FileType markdown let g:indentLine_enabled=0
]]

-- Adding beautiful tab with icons , using akinsho/bufferline
vim.opt.termguicolors = true
--require("bufferline").setup{}

-- Allow a tab in airline
cmd[[let g:airline#extensions#tabline#enabled = 1]]


-- Allow the vim to be transparent,
vim.cmd[[
au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red
]]
