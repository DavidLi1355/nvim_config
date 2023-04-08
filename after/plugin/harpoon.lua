local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file, {desc="Add to Harpoon"})
vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu, {desc="Harpoon"})

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end, {desc="Harpoon 1"})
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end, {desc="Harpoon 2"})
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end, {desc="Harpoon 3"})
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end, {desc="Harpoon 4"})
