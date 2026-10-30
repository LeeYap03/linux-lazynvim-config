return {
	"rmagatti/auto-session",
	config = function()
		local auto_session = require("auto-session")

		auto_session.setup({
			auto_restore_enabled = false,
			session_lens = { load_on_setup = false },
			auto_session_suppress_dirs = { "~/", "~/Projects/", "~/Downloads", "~/Documents", "~/Desktop/" },
		})
	end,
}
