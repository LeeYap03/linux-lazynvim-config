-- Built-in `gc` commenting; this only makes commentstring context-aware (tsx, html, etc.)
return {
	"JoosepAlviste/nvim-ts-context-commentstring",
	event = { "BufReadPost", "BufNewFile" },
	init = function()
		vim.g.skip_ts_context_commentstring_module = true
	end,
	config = function()
		require("ts_context_commentstring").setup({ enable_autocmd = false })

		local get_option = vim.filetype.get_option
		vim.filetype.get_option = function(filetype, option)
			return option == "commentstring" and require("ts_context_commentstring.internal").calculate_commentstring()
				or get_option(filetype, option)
		end
	end,
}
