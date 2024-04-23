return {
	"bluz71/vim-moonfly-colors",
	name = "moonfly",
	lazy = false,
	priority = 1000,

	config = function()
		vim.cmd.colorscheme("moonfly")
		-- vim.g.moonflyTransparent = true
	end,
}

-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {
--     style = 'dark',
--     transparent = true,
--     styles = {
--       sidebars = "transparent", -- style for sidebars, see below
--       floats = "transparent",   -- style for floating windows
--     }
--   },
--   config = function()
--     vim.g.tokyonight_dark_float = false
--     vim.cmd [[colorscheme tokyonight-night]]
--     vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
--   end
-- }
