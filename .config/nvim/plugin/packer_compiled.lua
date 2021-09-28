-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/ghasak.ibrahim/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/ghasak.ibrahim/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/ghasak.ibrahim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/ghasak.ibrahim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/ghasak.ibrahim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    after = { "cmp_luasnip" },
    config = { "\27LJ\2\nF\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\fluasnip\27plugins.configs.others\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    wants = { "friendly-snippets" }
  },
  ReplaceWithRegister = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/ReplaceWithRegister"
  },
  ["accelerated-jk"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/accelerated-jk"
  },
  ["blamer.nvim"] = {
    config = { "\27LJ\2\nQ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\18BlamerSetting plugins.configs.myGitBlamer\frequire\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/blamer.nvim"
  },
  ["bufdelete.nvim"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/bufdelete.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup#plugins.configs.myBufferConfig\frequire\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after = { "friendly-snippets" },
    after_files = { "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["cmp-nvim-lsp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/cmp-buffer"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    after = { "cmp-buffer" },
    after_files = { "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["cmp-nvim-lua"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after = { "cmp-nvim-lsp" },
    after_files = { "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      cmp_luasnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua"
  },
  cmp_luasnip = {
    after = { "cmp-nvim-lua" },
    after_files = { "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/cmp_luasnip"
  },
  ["ctrlp.vim"] = {
    config = { "\27LJ\2\n˜\1\0\0\4\0\3\0\0066\0\0\0009\0\1\0\18\1\0\0'\3\2\0B\1\2\1K\0\1\0u          let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']\n        \bcmd\bvim\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/ctrlp.vim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\30plugins.configs.dashboard\frequire\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  everforest = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/everforest"
  },
  ["friendly-snippets"] = {
    load_after = {
      ["cmp-buffer"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["glow.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins.configs.myGlowMark\frequire\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/glow.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nN\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tinit&plugins.configs.myIndentBlankLine\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  ["jupyter_ascending.vim"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/jupyter_ascending.vim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim"
  },
  ["lsp_signature.nvim"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14neoscroll\27plugins.configs.others\frequire\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14autopairs\27plugins.configs.others\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-base16.lua"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tinit\vcolors\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/nvim-base16.lua"
  },
  ["nvim-cmp"] = {
    after = { "LuaSnip", "nvim-autopairs" },
    config = { "\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24plugins.configs.cmp\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14colorizer\27plugins.configs.others\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    after = { "lsp_signature.nvim" },
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.configs.lspconfig\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    after = { "nvim-lspconfig" },
    loaded = true,
    needs_bufread = false,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins.configs.myNvimTree\frequire\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins.configs.treesitter\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/papercolor-theme"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup-menu.nvim"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/popup-menu.nvim"
  },
  rnvimr = {
    config = { "\27LJ\2\nF\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nStyle\29plugins.configs.myRanger\frequire\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  ["sidebar.nvim"] = {
    config = { "\27LJ\2\nä\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\rsections\1\4\0\0\rdatetime\15git-status\20lsp-diagnostics\1\0\6\tside\nright\topen\1 disable_default_keybindings\3\0\22section_separator\n-----\20update_interval\3è\a\18initial_width\3#\nsetup\17sidebar-nvim\frequire\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/sidebar.nvim"
  },
  sniprun = {
    config = { "\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\30plugins.configs.mySniprun\frequire\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/sniprun"
  },
  ["spellsitter.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16spellsitter\frequire\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/spellsitter.nvim"
  },
  ["spelunker.vim"] = {
    config = { "\27LJ\2\nK\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\"plugins.configs.spellChecking\frequire\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/spelunker.vim"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tinit%plugins.configs.mySymbolsOutline\frequire\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0 plugins.configs.myTelescope\frequire\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  undotree = {
    config = { "\27LJ\2\n@\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0%plugins.configs.myUndoTreeConfig\frequire\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-clap"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/vim-clap"
  },
  ["vim-cool"] = {
    config = { "\27LJ\2\n2\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\21CoolTotalMatches\6g\bvim\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/vim-cool"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-eft"] = {
    config = { "\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\30plugins.configs.myVim_eft\frequire\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/vim-eft"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-matchup"] = {
    after_files = { "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    loaded = true,
    needs_bufread = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/vim-matchup"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/vim-signify"
  },
  ["vim-sneak"] = {
    config = { "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26plugins.configs.sneak\frequire\0" },
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/vim-sneak"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-system-copy"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/vim-system-copy"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/start/vista.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: nvim-lspinstall
time([[Setup for nvim-lspinstall]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\16silent! e %\bcmd\bvimy\1\0\4\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\4\0009\0\5\0003\2\6\0)\3\0\0B\0\3\1K\0\1\0\0\rdefer_fn\bvim\20nvim-lspinstall\21packer_lazy_load\15core.utils\frequire\0", "setup", "nvim-lspinstall")
time([[Setup for nvim-lspinstall]], false)
time([[packadd for nvim-lspinstall]], true)
vim.cmd [[packadd nvim-lspinstall]]
time([[packadd for nvim-lspinstall]], false)
-- Setup for: vim-matchup
time([[Setup for vim-matchup]], true)
try_loadstring("\27LJ\2\nS\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\16vim-matchup\21packer_lazy_load\15core.utils\frequire\0", "setup", "vim-matchup")
time([[Setup for vim-matchup]], false)
time([[packadd for vim-matchup]], true)
vim.cmd [[packadd vim-matchup]]
time([[packadd for vim-matchup]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14neoscroll\27plugins.configs.others\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: ctrlp.vim
time([[Config for ctrlp.vim]], true)
try_loadstring("\27LJ\2\n˜\1\0\0\4\0\3\0\0066\0\0\0009\0\1\0\18\1\0\0'\3\2\0B\1\2\1K\0\1\0u          let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']\n        \bcmd\bvim\0", "config", "ctrlp.vim")
time([[Config for ctrlp.vim]], false)
-- Config for: rnvimr
time([[Config for rnvimr]], true)
try_loadstring("\27LJ\2\nF\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nStyle\29plugins.configs.myRanger\frequire\0", "config", "rnvimr")
time([[Config for rnvimr]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\30plugins.configs.dashboard\frequire\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: vim-eft
time([[Config for vim-eft]], true)
try_loadstring("\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\30plugins.configs.myVim_eft\frequire\0", "config", "vim-eft")
time([[Config for vim-eft]], false)
-- Config for: sniprun
time([[Config for sniprun]], true)
try_loadstring("\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\30plugins.configs.mySniprun\frequire\0", "config", "sniprun")
time([[Config for sniprun]], false)
-- Config for: spellsitter.nvim
time([[Config for spellsitter.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16spellsitter\frequire\0", "config", "spellsitter.nvim")
time([[Config for spellsitter.nvim]], false)
-- Config for: glow.nvim
time([[Config for glow.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins.configs.myGlowMark\frequire\0", "config", "glow.nvim")
time([[Config for glow.nvim]], false)
-- Config for: spelunker.vim
time([[Config for spelunker.vim]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\"plugins.configs.spellChecking\frequire\0", "config", "spelunker.vim")
time([[Config for spelunker.vim]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tinit%plugins.configs.mySymbolsOutline\frequire\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\nL\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup#plugins.configs.myBufferConfig\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0 plugins.configs.myTelescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: vim-sneak
time([[Config for vim-sneak]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26plugins.configs.sneak\frequire\0", "config", "vim-sneak")
time([[Config for vim-sneak]], false)
-- Config for: vim-cool
time([[Config for vim-cool]], true)
try_loadstring("\27LJ\2\n2\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\21CoolTotalMatches\6g\bvim\0", "config", "vim-cool")
time([[Config for vim-cool]], false)
-- Config for: blamer.nvim
time([[Config for blamer.nvim]], true)
try_loadstring("\27LJ\2\nQ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\18BlamerSetting plugins.configs.myGitBlamer\frequire\0", "config", "blamer.nvim")
time([[Config for blamer.nvim]], false)
-- Config for: sidebar.nvim
time([[Config for sidebar.nvim]], true)
try_loadstring("\27LJ\2\nä\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\rsections\1\4\0\0\rdatetime\15git-status\20lsp-diagnostics\1\0\6\tside\nright\topen\1 disable_default_keybindings\3\0\22section_separator\n-----\20update_interval\3è\a\18initial_width\3#\nsetup\17sidebar-nvim\frequire\0", "config", "sidebar.nvim")
time([[Config for sidebar.nvim]], false)
-- Config for: undotree
time([[Config for undotree]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0%plugins.configs.myUndoTreeConfig\frequire\0", "config", "undotree")
time([[Config for undotree]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins.configs.myNvimTree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-lspconfig ]]

-- Config for: nvim-lspconfig
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.configs.lspconfig\frequire\0", "config", "nvim-lspconfig")

vim.cmd [[ packadd lsp_signature.nvim ]]
time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'indent-blankline.nvim', 'nvim-colorizer.lua', 'nvim-treesitter'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles(1) end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
