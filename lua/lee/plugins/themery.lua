return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				{ name = "TokyoNight Storm", colorscheme = "tokyonight-storm" },
				{ name = "Catppuccin Mocha", colorscheme = "catppuccin-mocha" },
				{ name = "CarbonFox", colorscheme = "nightfox" },
			},
			livePreview = true,
		})
	end,
}
