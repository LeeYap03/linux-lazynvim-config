return {
	"lewis6991/gitsigns.nvim",
	opts = {
		trouble = true,
		sign_priority = 100,
		current_line_blame = true,
		on_attach = function(bufnr)
			local gitsigns = require("gitsigns")

			-- Modified map function to accept a description
			local function map(mode, l, r, opts)
				opts = opts or {}
				opts.buffer = bufnr
				vim.keymap.set(mode, l, r, opts)
			end

			-- Navigation
			map("n", "]h", function()
				if vim.wo.diff then
					vim.cmd.normal({ "]c", bang = true })
				else
					gitsigns.nav_hunk("next")
				end
			end, { desc = "Go to next Git hunk" })

			map("n", "[h", function()
				if vim.wo.diff then
					vim.cmd.normal({ "[c", bang = true })
				else
					gitsigns.nav_hunk("prev")
				end
			end, { desc = "Go to previous Git hunk" })

			-- Actions (Using <leader>g)
			map("n", "<leader>gs", gitsigns.stage_hunk, { desc = "Stage Hunk" })
			map("n", "<leader>gr", gitsigns.reset_hunk, { desc = "Reset Hunk" })

			map("v", "<leader>gs", function()
				gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "Stage Hunk (Visual)" })

			map("v", "<leader>gr", function()
				gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "Reset Hunk (Visual)" })

			map("n", "<leader>gS", gitsigns.stage_buffer, { desc = "Stage Buffer" })
			map("n", "<leader>gR", gitsigns.reset_buffer, { desc = "Reset Buffer" })
			map("n", "<leader>gp", gitsigns.preview_hunk, { desc = "Preview Hunk" })
			map("n", "<leader>gi", gitsigns.preview_hunk_inline, { desc = "Preview Hunk Inline" })

			map("n", "<leader>gb", function()
				gitsigns.blame_line({ full = true })
			end, { desc = "Toggle Full Line Blame" })

			-- Diff / Quickfix (Using <leader>g)
			map("n", "<leader>gd", gitsigns.diffthis, { desc = "Diff against index" })

			map("n", "<leader>gD", function()
				gitsigns.diffthis("~")
			end, { desc = "Diff against HEAD" })

			map("n", "<leader>gQ", function()
				gitsigns.setqflist("all")
			end, { desc = "Populate QF with all Git changes" })

			map("n", "<leader>gq", gitsigns.setqflist, { desc = "Populate QF with Buffer changes" })

			-- Toggles
			map("n", "<leader>tb", gitsigns.toggle_current_line_blame, { desc = "Toggle Current Line Blame" })
			map("n", "<leader>tw", gitsigns.toggle_word_diff, { desc = "Toggle Word Diff" })

			-- Text object
			map({ "o", "x" }, "ih", gitsigns.select_hunk, { desc = "Select Hunk" })
		end,
	},
}
