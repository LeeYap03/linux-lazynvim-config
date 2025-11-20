return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local lsp_remaps = require("lee.core.lsp_remaps")

		local capabilities = cmp_nvim_lsp.default_capabilities()

		vim.diagnostic.config({
			linehl = true,
			virtual_text = true,
			signs = {
				active = true,
				text = {
					[vim.diagnostic.severity.ERROR] = "",
					[vim.diagnostic.severity.WARN] = "",
					[vim.diagnostic.severity.HINT] = "󰠠",
					[vim.diagnostic.severity.INFO] = "",
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
					diagnostics = {
						globals = { "vim" },
					},
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
