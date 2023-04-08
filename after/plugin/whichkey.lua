vim.o.timeout = true
vim.o.timeoutlen = 300
require("which-key").setup {
    layout = {
        height = { min = 4, max = 25 }, -- min and max height of the columns
        width = { min = 20, max = 50 }, -- min and max width of the columns
        spacing = 3,                    -- spacing between columns
        align = "center",               -- align columns left, center or right
    },
}
