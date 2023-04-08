local builtin = require('telescope.builtin')
local wk = require("which-key")
wk.register({
    p = {
        name = "Telescope",
        f = { builtin.find_files, "Find File" },
        s = { builtin.live_grep, "Live Grep" },
        b = { builtin.buffers, "Buffers" },
    },
}, { prefix = "<leader>" })
