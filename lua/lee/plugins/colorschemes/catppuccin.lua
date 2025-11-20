return {
	"catppuccin/nvim",
	priority = 1000,
	opts = {
		flavour = "mocha",
		transparent_background = true,
		float = {
			transparent = true,
			solid = false,
		},
		highlight_overrides = {
			all = function()
				return {
					-- Make line numbers clearer
					CursorLineNr = { fg = "#86b1f6", bold = true },
					LineNr = { fg = "#aaaaaa" },
				}
			end,
		},
		integrations = {
			indent_blankline = {
				enabled = true,
				scope_color = "pink",
				colored_indent_levels = true,
			},
			cmp = true,
			mason = true,
			noice = true,
		},
	},
	config = function(_, opts)
		require("catppuccin").setup(opts)
	end,
}
