local env = require("env")
local g = vim.g

return {
	"itchyny/calendar.vim",
	keys = {
		{ "<leader>c", "<CMD>Calendar -position=here<CR>", desc = "Open Calendar", silent = true },
		{
			"<leader>Cl",
			"<CMD>Calendar -position=right -width=35 -view=day<CR>",
			desc = "Open Calendar Right",
			silent = true,
		},
	},
	config = function()
		g.calendar_first_day = "monday"
		g.calendar_date_endian = "big"
		g.calendar_frame = "space"
		g.calendar_week_number = 1
		g.calendar_google_calendar = 1
		g.calendar_google_task = 1
		g.calendar_google_api_key = env.GOOGLE_API
		g.calendar_google_client_id = env.GOOGLE_CLIENT_ID
		g.calendar_google_client_secret = env.GOOGLE_CLIENT_SECRET

		-- Enable pressing <CR> to go to corresponding Journal entry in Wiki.vim (lervag/wiki.vim)
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "calendar",
			callback = function()
				for lhs, rhs in pairs({
					["<C-e>"] = "<C-^>",
					["<C-u>"] = "<CMD>WinBufDelete<CR>",
					["<CR>"] = function()
						local year = vim.api.nvim_eval("b:calendar.day().get_year()")
						local month = vim.api.nvim_eval("b:calendar.day().get_month()")
						local day = vim.api.nvim_eval("b:calendar.day().get_day()")
						---@diagnostic disable-next-line: redundant-parameter
						local date = vim.fn.printf("%d-%0.2d-%0.2d", year, month, day)
						vim.fn["wiki#journal#open"](date)
					end,
				}) do
					vim.keymap.set("n", lhs, rhs, { noremap = true, buffer = true })
				end
			end,
		})
	end,
}
