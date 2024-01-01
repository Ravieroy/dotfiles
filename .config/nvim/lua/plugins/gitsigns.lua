-- return {
-- 				{
--         "lewis6991/gitsigns.nvim",
--         opts = {
--             signs = {
--                 add = { text = "+" },
--                 change = { text = "~" },
--                 delete = { text = "_" },
--                 topdelete = { text = "‾" },
--                 changedelete = { text = "~" },
--             },
--         },
--     },
-- }
--

return {

	"lewis6991/gitsigns.nvim",
	config = function()
		local gs = require("gitsigns")

		gs.setup({
			signs = {
				add = {
					hl = "GitSignsAdd",
					text = "▉",
					numhl = "GitSignsAddNr",
					linehl = "GitSignsAddLn",
				},
				change = {
					hl = "GitSignsChange",
					text = "▉",
					numhl = "GitSignsChangeNr",
					linehl = "GitSignsChangeLn",
				},
				delete = {
					hl = "GitSignsDelete",
					text = "▉",
					numhl = "GitSignsDeleteNr",
					linehl = "GitSignsDeleteLn",
				},
				topdelete = {
					hl = "GitSignsDelete",
					text = "‾",
					numhl = "GitSignsDeleteNr",
					linehl = "GitSignsDeleteLn",
				},
				changedelete = {
					hl = "GitSignsChange",
					text = "~",
					numhl = "GitSignsChangeNr",
					linehl = "GitSignsChangeLn",
				},
			},
		})

		vim.keymap.set("n", "<Leader>hr", gs.reset_hunk)
		vim.keymap.set("n", "<Leader>hp", gs.preview_hunk)
		vim.keymap.set("n", "<Leader>hb", function()
			gs.blame_line({ full = true })
		end)
		vim.keymap.set("n", "<leader>hd", gs.diffthis)
	end,
}
