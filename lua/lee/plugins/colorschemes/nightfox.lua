return {
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			options = {
				transparent = true,
				styles = {
					comments = "italic",
					conditionals = "NONE",
					constants = "bold",
					functions = "italic",
					keywords = "NONE",
					numbers = "underline",
					operators = "NONE",
					strings = "NONE",
					types = "NONE",
					variables = "NONE",
				},
			},
			modules = {
				diagnostic = {
					enable = true,
					background = false,
				},
			},
			palettes = {
				all = {
					sel0 = "#2b3b51",
					sel1 = "#3c5372",
				},
			},
			groups = {
				all = {
					WinSeparator = { fg = "#6c7086" }, -- overlay0 in catpuccin mocha
					EndOfBuffer = { fg = "#6c7086" }, -- overlay0 in catpuccin mocha
				},
			},
			specs = {},
		},

		config = function(_, opts)
			local carbonfox_palette = require("nightfox.palette").load("carbonfox")
			opts.specs = {
				all = {
					git = {
						add = carbonfox_palette.green,
						removed = carbonfox_palette.red.bright,
						changed = "#d1d63b", -- custom yellow
						conflict = carbonfox_palette.orange,
						ignored = carbonfox_palette.comment,
					},
					diag = {
						error = carbonfox_palette.red,
						warn = carbonfox_palette.yellow,
						info = carbonfox_palette.magenta,
						hint = carbonfox_palette.comment,
						ok = carbonfox_palette.green,
					},
				},
			}
			require("nightfox").setup(opts)
		end,
	},
}
