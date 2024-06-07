return {
	"epwalsh/obsidian.nvim",
	version = "*",
	lazy = false,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
		"nvim-telescope/telescope.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "Gnosis",
				path = "/Users/tony.boules/Library/Mobile Documents/iCloud~md~obsidian/Documents/Gnosis",
			},
		},
		templates = {
			folder = "Extras/templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M",
		},
		daily_notes = {
			folder = "Calendar/2024/daily",
			template = "daily_note.md",
		},
		completion = {
			nvim_cmp = true,
		},
		disable_frontmatter = true,

		---@param url string
		follow_url_func = function(url)
			vim.fn.jobstart({ "open", url })
		end,
	},
}
