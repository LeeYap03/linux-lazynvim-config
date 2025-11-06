local Keymap = vim.keymap.set
local lsp_buf_config = require("telescope.builtin") -- For Telescope functions

--- Sets up buffer-local keymaps for LSP.
--- @param ev table The event object from LspAttach
local M = {}

M.set_lsp_keymaps = function(ev)
	-- Buffer local Keymappings.
	local opts = { buffer = ev.buf, silent = true }

	local get_clients = function()
		return vim.lsp.get_clients({ bufnr = ev.buf })
	end

	opts.desc = "Show LSP references"
	Keymap("n", "gR", function()
		lsp_buf_config.lsp_references({ clients = get_clients() })
	end, opts)

	opts.desc = "Go to declaration"
	Keymap("n", "gD", vim.lsp.buf.declaration, opts)

	opts.desc = "Show LSP definitions"
	Keymap("n", "gd", function()
		lsp_buf_config.lsp_definitions({ clients = get_clients() })
	end, opts)

	opts.desc = "Show LSP implementations"
	Keymap("n", "gi", function()
		lsp_buf_config.lsp_implementations({ clients = get_clients() })
	end, opts)

	opts.desc = "Show LSP type definitions"
	Keymap("n", "gt", function()
		lsp_buf_config.lsp_type_definitions({ clients = get_clients() })
	end, opts)

	opts.desc = "See available code actions"
	Keymap({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

	opts.desc = "Smart rename"
	Keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)

	opts.desc = "Show buffer diagnostics"
	Keymap("n", "<leader>D", function()
		lsp_buf_config.diagnostics({ bufnr = 0 })
	end, opts)

	opts.desc = "Show line diagnostics"
	Keymap("n", "<leader>d", vim.diagnostic.open_float, opts)

	opts.desc = "Go to previous diagnostic"
	Keymap("n", "[d", vim.diagnostic.goto_prev, opts)

	opts.desc = "Go to next diagnostic"
	Keymap("n", "]d", vim.diagnostic.goto_next, opts)

	opts.desc = "Show documentation for what is under cursor"
	Keymap("n", "K", vim.lsp.buf.hover, opts)

	opts.desc = "Restart LSP"
	Keymap("n", "<leader>rs", ":LspRestart<CR>", opts)
end

return M
