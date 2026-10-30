return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"saghen/blink.cmp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{
			"folke/lazydev.nvim",
			ft = "lua",
			opts = {},
		},
	},
	config = function()
		local lsp_remaps = require("lee.core.lsp_remaps")

		local capabilities = require("blink.cmp").get_lsp_capabilities()

		vim.diagnostic.config({
			virtual_text = true,
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "",
					[vim.diagnostic.severity.WARN] = "",
					[vim.diagnostic.severity.HINT] = "󰠠",
					[vim.diagnostic.severity.INFO] = "",
				},
				linehl = {
					[vim.diagnostic.severity.ERROR] = "DiagnosticVirtualTextError",
					[vim.diagnostic.severity.WARN] = "DiagnosticVirtualTextWarn",
					[vim.diagnostic.severity.HINT] = "DiagnosticVirtualTextHint",
					[vim.diagnostic.severity.INFO] = "DiagnosticVirtualTextInfo",
				},
			},
			float = {
				border = "single",
			},
			update_in_insert = false,
			severity_sort = true,
		})

		-- Place specifgic configs here
		vim.lsp.config("emmet_ls", {
			capabilities = capabilities,
			filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
		})
		vim.lsp.config("lua_ls", {
			capabilities = capabilities,
			settings = {
				Lua = {
					completion = {
						callSnippet = "Replace",
					},
				},
			},
		})
		vim.lsp.config("basedpyright", {
			capabilities = capabilities,
			filetypes = { "python" },
			settings = {
				basedpyright = {
					analysis = {
						typeCheckingMode = "basic",
						diagnosticMode = "workspace",
					},
				},
			},
		})

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				lsp_remaps.set_lsp_keymaps(ev)
			end,
		})
	end,
}
