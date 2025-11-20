return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		style = "storm",
		transparent = true,
		terminal_colors = true,
		styles = {
			floats = "transparent",
			functions = {},
		},

		on_highlights = function(hl, c)
			-- Make line numbers clearer
			hl.CursorLineNr = { fg = c.green, bold = true }
			hl.LineNr = { fg = c.blue }
			hl.LineNrAbove = { fg = c.blue }
			hl.LineNrBelow = { fg = c.blue }
		end,
	},
	config = function(_, opts)
		require("tokyonight").setup(opts)
	end,
}
