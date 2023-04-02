vim.g.mapleader = " "

-- window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- resize with arrow
vim.keymap.set("n", "<C-Up>", ":resize -2<cr>")
vim.keymap.set("n", "<C-Down>", ":resize +2<cr>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<cr>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<cr>")

-- indent
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- centering
function ScrollGolden()
    -- vim.cmd("execute \"normal! " .. (height / 4) .. key .. "\"")
end

vim.keymap.set("n", "<C-d>", function()
    local height = vim.fn.winheight(0)
    vim.cmd("execute \"normal! " .. math.floor(height / 4) .. "j\"")
    vim.cmd("execute \"normal! zz\"")
end)
vim.keymap.set("n", "<C-u>", function()
    local height = vim.fn.winheight(0)
    vim.cmd("execute \"normal! " .. math.floor(height / 4) .. "k\"")
    vim.cmd("execute \"normal! zz\"")
end)
-- vim.keymap.set("n", "j", "jzz")
-- vim.keymap.set("n", "k", "kzz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without writing to register
vim.keymap.set("x", "p", [["_dP]])
