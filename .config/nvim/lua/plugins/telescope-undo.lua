return {
	"debugloop/telescope-undo.nvim",
	dependencies = { -- note how they're inverted to above example
		{
			"nvim-telescope/telescope.nvim",
			dependencies = { "nvim-lua/plenary.nvim" },
		},
	},
	keys = {
		{
			"<leader>u",
			"<cmd>Telescope undo<cr>",
			desc = "undo history",
		},
	},
	opts = {
		extensions = {
			undo = {
				-- telescope-undo.nvim config, see below
				side_by_side = true,
				layout_strategy = "vertical",
				layout_config = {
					preview_height = 0.4,
				},
			},
		},
	},
	config = function(_, opts)
		require("telescope").setup(opts)
		require("telescope").load_extension("undo")
	end,
}
