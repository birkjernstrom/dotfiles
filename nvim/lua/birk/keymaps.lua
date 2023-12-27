-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Quickfix shortcuts
vim.keymap.set("n", "]q", ":cnext<CR>", { desc = "Quickfix Next" })
vim.keymap.set("n", "[q", ":cprev<CR>", { desc = "Quickfix Previous" })

------------------------
-- Credit ThePrimeagen
------------------------

-- Keep cursor in same place when using J
vim.keymap.set("n", "J", "mzJ`z")

-- Page jump & search stays focused in center of buffer
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Move selection up || down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
