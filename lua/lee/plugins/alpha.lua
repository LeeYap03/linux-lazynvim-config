return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-mini/mini.icons",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"                                                  ",
			"⣿⣿⣿⣿⡿⠋⠀⢰⣿⣿⣿⣿⣿⣷⣾⣱⣿⠟⣰⣿⡟⣱⣿⣿⡿⠟⣡⣶⡿⠛⣩⣝⡻⣿⣿⣿⣦⡹⡄⢶⣮⣛⢿⣿⣿⣿⣿⣿⣿⣿",
			"⣿⣿⣿⠏⡀⢠⠃⣿⣿⣿⣿⣿⣿⣿⣽⣿⠏⢰⣿⡿⣰⣿⣿⠟⠀⣼⡿⡋⢰⣿⡿⢫⣴⣿⣿⣿⣿⣧⢈⣶⣿⣿⣷⣍⠻⣿⣿⣿⣿⣿",
			"⣿⣿⡏⣴⠃⡿⢰⣿⣿⣿⡿⣿⣿⣿⢾⡟⣸⡘⠿⠇⣿⣿⡏⣜⢸⡟⣴⠁⣿⡿⣱⣿⣿⠟⠩⢤⠨⡙⣸⣉⣉⣉⠩⣿⣷⣌⢛⣛⣙⡻",
			"⣿⠏⣼⡿⢸⡇⢸⣿⣿⣿⠇⢿⣿⣿⡌⢣⣵⣶⣿⣿⣶⣬⡐⢿⡌⠁⣿⡄⢿⣇⢻⣿⡏⣼⣿⣷⣄⠀⠉⠭⠛⣿⣷⣌⢻⣿⣦⠙⣿⣿",
			"⣿⣸⣿⣿⣼⣧⣼⣿⣿⣿⡀⣌⠻⡟⡰⣫⣦⢹⣿⣿⣿⣿⣿⣦⡙⣶⣾⣿⣦⣙⠸⣿⡇⢿⣿⣿⣿⣷⣶⣦⠀⣿⣿⣿⣿⣿⣿⣧⢹⣿",
			"⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡙⢷⢠⠇⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣭⣙⢿⣶⣶⣾⣿⣿⣿⣿⣿⡿⢡⣿⣿⣿⣿⣿⣿⣿⣧⣾",
			"⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠂⢼⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠙⣿⣿⣿⣿⡏⢋⣥⣶⣿⣿⡿⢃⣾⣿⣿⣿⣿⣾",
			"⣾⡟⢋⡥⢤⣅⠠⢩⣭⣥⣴⣾⣧⢸⡜⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣶⣭⣉⣛⡉⢀⡾⢛⣿⣿⣿⣿⣿",
			"⢁⣶⡥⠶⠶⠙⣧⣿⣿⣿⣿⣿⣿⡈⣧⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠟⣛⣛⣛⣛⠿⣟⠛⠩⠐⣋⣴⣿⡟⣻⣿⣿⣿",
			"⣿⠏⣴⣿⣿⠀⣿⣿⣿⣿⣿⣿⣯⣧⠸⣷⡞⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⡰⣹⣟⢿⣿⣿⣷⣌⢧⡙⠿⣿⡿⠟⣰⣿⣿⣿⣿",
			"⣿⢸⣿⡿⢉⣴⣿⣿⣿⣿⣿⣫⣻⡈⠇⠘⣷⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⡼⣸⣿⣿⣸⣿⣿⣿⣿⡌⡿⠷⠖⣂⣼⣿⢏⡄⢻⣿",
			"⢿⡘⢿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⣆⠈⢻⣿⣿⣿⣿⣿⣿⣿⡿⠟⣩⣴⢰⣇⣿⣿⣿⣿⣿⣿⣿⣿⣧⣥⣄⡛⢛⣋⡥⠚⣠⣿⣿",
			"⠘⣿⡶⠌⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡙⠛⠛⠛⣛⣩⣥⣶⣿⣿⡇⢸⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠅⣴⣿⡿⣿⣿",
			"⣧⣈⠃⠥⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠈⠙⠻⣿⣿⣿⣇⢸⣏⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⠟⣱⣿⡟",
			"⣿⣿⣇⠐⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⠘⣿⡖⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⣤⣤⣾⣿⡿⢰",
			"⣿⣿⣿⣆⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⣰⣶⣤⣄⠀⠀⠀⠀⠀⠀⠀⠈⠻⣇⢻⣎⣋⣿⣿⣿⣿⣿⣿⣿⣿⡿⢋⣼⣿⡟⢹⠟⣠⠿",
			"⣿⣿⣿⡇⠠⠿⢿⣿⣿⣿⣿⣿⣿⣿⡟⢰⣿⣟⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠈⠈⠿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠀⣸⡿⠛⠀⢁⣤⣤⣶",
			"⣿⣿⡿⠁⠴⠿⣦⡙⣿⣿⣿⣿⣿⣿⠁⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⢠⣷⣆⢨⠩⣭⡥⠀⣤⣤⣤⣬⣤⣶⣿⡇⢸⣿⣿⣿",
			"⣿⠋⣰⣾⣿⣿⣶⠄⠻⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⢀⣴⣿⣿⣜⣳⣧⢸⠁⠀⣿⣿⣿⣿⣿⣿⣿⡇⢸⣿⣿⣿",
			"⠋⣴⣿⣿⣿⠟⣡⣾⣿⣦⠻⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢀⣴⣿⣿⣿⣿⣷⣿⣏⡞⢰⠀⣿⣿⣿⣿⣿⣿⢃⡇⢼⣿⣿⣿",
			"⢰⣿⣿⡿⣫⣾⣿⣿⣿⠟⣃⣙⢿⣿⡀⣿⣿⣿⣿⣿⣿⣿⡟⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⡾⠁⢾⡇⣿⣿⣿⣿⣿⢃⣾⡇⠈⣿⣿⣿",
			"⣿⣿⣿⣴⣿⣿⠿⢋⣴⡾⣛⣩⣤⣭⡁⢻⣿⣿⣿⣿⠿⢋⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⢸⡇⢹⣿⣿⣿⢃⣾⣿⠃⣠⣾⣿⣿",
			"⢻⣿⣿⣿⣿⣥⣾⣿⣿⢰⣿⣿⣿⠏⡇⣄⠛⠛⣉⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠁⠀⠀⠀⠸⡇⢸⣿⣿⢃⣾⣿⣿⠀⣿⣿⣿⣿",
			"⣄⠻⣿⣿⣿⣿⣿⣿⣿⣘⣿⣿⣿⣄⠰⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢋⣭⣥⠀⢄⠀⢤⣤⠀⣀⠤⡁⢸⣿⣣⣿⣿⣿⣿⢰⣿⣿⣿⣿",
			"                                                  ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", " Empty Buffer", "<cmd>enew<CR>"),
			dashboard.button("p", " Open Netrw", "<cmd>Exp<CR>"),
			dashboard.button("r", " Find Recent", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("f", " Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("g", " Find Word / Grep", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("s", " Open Last Session", "<cmd>AutoSession restore<CR>"),
			dashboard.button("c", "󰢻 Find Config Files", "<cmd>Telescope find_files cwd=~/.config/nvim/<CR>"),
			dashboard.button("l", "󰒲 Open Lazy", "<cmd>Lazy<CR>"),
			dashboard.button("m", "󱊍 Open Mason", "<cmd>Mason<CR>"),
		}

		-- Funny Colors for header and others --
		math.randomseed(os.time())
		local r, g, b = math.random(127, 255), math.random(127, 255), math.random(127, 255)
		local fghex = "#" .. string.format("%02X", r) .. string.format("%02X", g) .. string.format("%02X", b)

		vim.api.nvim_set_hl(0, "AlphaColor", { fg = fghex, bold = true })
		dashboard.section.header.opts.hl = "AlphaColor"
		dashboard.section.buttons.opts.hl = "AlphaColor"
		dashboard.section.footer.opts.hl = "AlphaColor"

		require("alpha").setup(dashboard.config)
	end,
}
