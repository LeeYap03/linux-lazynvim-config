local Keymap = vim.keymap.set

-- Dismiss Noice Message
Keymap("n", "<leader>nd", vim.cmd.NoiceDismiss, { desc = "Dismiss Noice Message" })
--
-- Undotree Keymaps
Keymap("n", "<leader>ut", ":UndotreeToggle<CR>", { desc = "Toggle Undotree" })

-- Harpoon Keymaps
Keymap("n", "<leader>A", function()
	require("harpoon"):list():add()
end, { desc = "Harpoon File" })
Keymap("n", "<leader>a", function()
	local harpoon = require("harpoon")
	harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon Quick Menu" })
Keymap("n", "<leader>1", function()
	require("harpoon"):list():select(1)
end, { desc = "harpoon to file 1" })
Keymap("n", "<leader>2", function()
	require("harpoon"):list():select(2)
end, { desc = "harpoon to file 2" })
Keymap("n", "<leader>3", function()
	require("harpoon"):list():select(3)
end, { desc = "harpoon to file 3" })
Keymap("n", "<leader>4", function()
	require("harpoon"):list():select(4)
end, { desc = "harpoon to file 4" })
Keymap("n", "<leader>5", function()
	require("harpoon"):list():select(5)
end, { desc = "harpoon to file 5" })

-- Telescope Keymaps
local telescope = require("telescope.builtin")
Keymap("n", "<leader>ff", telescope.find_files, { desc = "Telescope find files" })
Keymap("n", "<leader>fg", telescope.live_grep, { desc = "Telescope grep" })
Keymap("n", "<leader>fb", telescope.buffers, { desc = "Telescope buffers" })
Keymap("n", "<leader>fh", telescope.help_tags, { desc = "Telescope help tags" })
Keymap("n", "<leader>fr", telescope.oldfiles, { desc = "Telescope find recent files" })
Keymap("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Telescope find todos" })

-- Trouble Keymaps
Keymap("n", "<leader>xw", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Open trouble workspace diagnostics" })
Keymap(
	"n",
	"<leader>xd",
	"<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
	{ desc = "Open trouble document diagnostics" }
)
Keymap("n", "<leader>xq", "<cmd>Trouble quickfix toggle<CR>", { desc = "Open trouble quickfix list" })
Keymap("n", "<leader>xl", "<cmd>Trouble loclist toggle<CR>", { desc = "Open trouble location list" })
Keymap("n", "<leader>xt", "<cmd>Trouble todo toggle<CR>", { desc = "Open todos in trouble" })

-- Formatting and Linting Keymaps
local conform = require("conform")
local lint = require("lint")

Keymap({ "n", "v" }, "<leader>mp", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	})
end, { desc = "Format file or range (in visual mode)" })

Keymap("n", "<leader>lt", function()
	lint.try_lint()
end, { desc = "Trigger linting for current file" })

-- Todo-Comments Keymaps
local todo_comments = require("todo-comments")

Keymap("n", "]t", function()
	todo_comments.jump_next()
end, { desc = "Next todo comment" })

Keymap("n", "[t", function()
	todo_comments.jump_prev()
end, { desc = "Previous todo comment" })

-- Sessions Keymaps
Keymap("n", "<leader>wr", "<cmd>AutoSession restore<CR>", { desc = "Restore session for cwd" })
Keymap("n", "<leader>ws", "<cmd>AutoSession save<CR>", { desc = "Save session for auto session root dir" })
