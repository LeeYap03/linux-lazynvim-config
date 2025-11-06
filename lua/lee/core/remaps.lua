-- General remaps
vim.g.mapleader = " "

Keymap = vim.keymap.set

-- Copy and Paste using System Clipboard
Keymap("v", "Y", '"+y', { desc = "Copy to system clipboard" })
Keymap({ "n", "x" }, "P", '"+p', { desc = "Paste from system clipboard" })

-- Move Selected Lines
Keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move visual selection down" })
Keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move visual selection up" })

-- Window Management
Keymap("n", "<leader>sv", ":vsplit<CR>", { desc = "Split window vertically" })
Keymap("n", "<leader>sh", ":split<CR>", { desc = "Split window horizontally" })
Keymap("n", "<leader>se", ":wincmd =<CR>", { desc = "Make all splits equal size" })
Keymap("n", "<leader>sx", ":close<CR>", { desc = "Close the current split" })
Keymap("n", "<leader>h", "<C-w>h", { desc = "Move to the split window on the left" })
Keymap("n", "<leader>j", "<C-w>j", { desc = "Move to the split window below" })
Keymap("n", "<leader>k", "<C-w>k", { desc = "Move to the split window above" })
Keymap("n", "<leader>l", "<C-w>l", { desc = "Move to the split window on the right" })
Keymap("n", "<leader>H", "<C-w><", { desc = "Decrease the width of the current window" })
Keymap("n", "<leader>J", "<C-w>>", { desc = "Increase the width of the current window" })
Keymap("n", "<leader>K", "<C-w>+", { desc = "Increase the height of the current window" })
Keymap("n", "<leader>L", "<C-w>-", { desc = "Decrease the height of the current window" })

-- Tab Management
Keymap("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
Keymap("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
Keymap("n", "<leader>tn", "<cmd>tabnext<CR>", { desc = "Go to next tab" })
Keymap("n", "<leader>tp", "<cmd>tabprevious<CR>", { desc = "Go to previous tab" })
Keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Reselect After Indenting
Keymap("x", ">", ">gv")
Keymap("x", "<", "<gv")
Keymap("n", ">", "V>")
Keymap("n", "<", "V<")

-- Keep cursor centered when pg down / pg up
Keymap("n", "<C-u>", "<C-u>zz")
Keymap("n", "<C-d>", "<C-d>zz")

-- Open netrw
Keymap("n", "<leader>pv", vim.cmd.Ex, { desc = "Project View" })

-- Clear Search Buffer
Keymap("n", "<leader>cs", ":noh<CR>", { desc = "Clear search buffer" })

-- Find and Replace Keymaps
Keymap("x", "fr", ":s///g<left><left><left>", { desc = "Find and Replace within selected" })
