return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
		"windwp/nvim-ts-autotag",
	},

	config = function()
		require("nvim-treesitter.configs").setup({
			--my configs
			autotag = {
				enable = true,
			},
			-- add languages to be installed here that you want installed for treesitter
			ensure_installed = {
				"c",
				"cpp",
				"go",
				"lua",
				"python",
				"rust",
				"tsx",
				"javascript",
				"typescript",
				"vimdoc",
				"vim",
				"bash",
				"json",
				"astro",
				"html",
				"css",
				"dockerfile",
				"templ",
				"markdown",
				"markdown_inline",
			},

			-- autoinstall languages that are not installed. defaults to false (but you can change for yourself!)
			auto_install = false,

			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<c-space>",
					node_incremental = "<c-space>",
					scope_incremental = "<c-s>",
					node_decremental = "<m-space>",
				},
			},
			textobjects = {
				select = {
					enable = true,
					lookahead = true, -- automatically jump forward to textobj, similar to targets.vim
					keymaps = {
						-- you can use the capture groups defined in textobjects.scm
						["aa"] = "@parameter.outer",
						["ia"] = "@parameter.inner",
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
					},
				},
				move = {
					enable = true,
					set_jumps = true, -- whether to set jumps in the jumplist
					goto_next_start = {
						["]]"] = "@function.outer",
					},
					goto_next_end = {
						["]m"] = "@function.outer",
					},
					goto_previous_start = {
						["[["] = "@function.outer",
					},
					goto_previous_end = {
						["[m"] = "@function.outer",
					},
				},
				swap = {
					enable = true,
					swap_next = {
						["<leader>jj"] = "@parameter.inner",
					},
					swap_previous = {
						["<leader>kk"] = "@parameter.inner",
					},
				},
			},
		})

		vim.api.nvim_create_autocmd("BufEnter", {
			pattern = "*.templ",
			callback = function()
				vim.cmd("TSBufEnable highlight")
			end,
		})
	end,
}
