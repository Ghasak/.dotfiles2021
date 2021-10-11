local init_modules = {
	-- following options are the default
	"core",
	"plugins",
	"colors",
	"colors.highlights",
	"scripts",
}

for _, module in ipairs(init_modules) do
	local ok, err = pcall(require, module)
	if not ok then
		error("Error in loading modules ...< " .. module .. " > " .. "\n\n" .. err)
	end
end

-- Configurations of the neovide
require("modules.neovideConfig").neovide_config()
