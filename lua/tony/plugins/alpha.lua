return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.startify")

		alpha.setup(dashboard.opts)

		vim.api.nvim_create_autocmd("VimEnter", {
			callback = function()
				alpha.start()
			end,
		})
	end,
}
