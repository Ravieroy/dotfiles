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

        vim.keymap.set("n", "<leader>hp", gs.preview_hunk)
        vim.keymap.set("n", "<leader>hb", function()
            gs.blame_line({ full = true })
        end)
        vim.keymap.set("n", "<leader>hd", gs.diffthis)
    end,
}
