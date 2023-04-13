local builtin = require('telescope.builtin')
local wk = require("which-key")
wk.register({
    p = {
        name = "Telescope",
        f = { builtin.find_files, "Find File" },
        s = { builtin.live_grep, "Live Grep" },
        b = { builtin.buffers, "Buffers" },
    },
    vim.keymap.set('n', '<leader>/', function()
        -- You can pass additional configuration to telescope to change theme, layout, etc.
        require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
            winblend = 10,
            previewer = false,
        })
    end, { desc = 'Fuzzily search in current buffer' })
}, { prefix = "<leader>" })
