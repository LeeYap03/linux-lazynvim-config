return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	dmc = { "Harpoon", "HarpoonUI" },
	config = function()
		require("harpoon"):setup()
	end,
}
