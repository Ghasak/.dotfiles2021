
local plugin_loader= {}

function plugin_loader:init()

	local home_dir = vim.loop.os_homedir()                                              -- >> Users/ghasak.ibrahim
	local packer_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"  -- >> Users/ghasak.ibrahim/.local/share/nvim/site/pack/packer/opt/packer.nvim
		if vim.fn.empty(vim.fn.glob(packer_path)) > 0 then
      vim.api.nvim_command('echohl WarningMsg |echom "Nvim-packer is not installed, will be fetch from github, wait momentarily ... " | echohl None')
			vim.fn.system {"git", "clone", "https://github.com/wbthomason/packer.nvim", packer_path }
			vim.cmd "packadd packer.nvim"
		end
  vim.cmd "packadd packer.nvim"
	--print(home_dir)
	--print(packer_path)

	-- This utility form packer, which can be used to change the behavior of where to install the packages
	--local util = require("packer.util")
	-- local rootPath = vim.fn.stdpath "data" .. "/site/pack/"
	-- local compilePath = home_dir .. "/.config/nvim" .. "/plugin/", "packer_compile.lua"
	-- local packer_ok, packer = pcall(require, "packer")
	-- local util = require "packer.util"
-- 	  packer.init {
-- 	    -- Change the package root directory where the packagee will be installed.
-- 	    --package_root = util.join_paths "~/.local/share/nvim/site/pack/",
-- 	    package_root = util.join_paths(rootPath),
-- 	    -- changing the directory where you compile your packages (packer_compiled.lua)
-- 	    --compile_path = util.join_paths("~/.config/nvim", "plugin", "packer_compiled.lua"),
-- 	    compile_path = util.join_paths("~/.local/share/nvim", "plugin", "packer_compiled.lua"),
-- 	    git = { clone_timeout = 300 },
-- 	    display = {
-- 	      open_fn = function()
-- 		return util.float { border = "rounded" }
-- 	      end,
-- 	    },
-- 	  }
-- 	-- Debugging
-- 	-- print(compilePath)
-- 	-- print(rootPath)
-- 	-- print(compilePath)
--
--
-- 	  self.packer = packer
-- 	  return self
end

function plugin_loader:load(configurations)
  return self.packer.startup(function(use)
    for _, plugins in ipairs(configurations) do
      for _, plugin in ipairs(plugins) do
        use(plugin)
      end
    end
  end)
end


return{
	init = function()
		return plugin_loader:init()
	end,
}


