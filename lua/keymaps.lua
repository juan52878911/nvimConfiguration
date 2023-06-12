local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- File Tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- bufferline ctrl + tab
keymap("n", "<C-Tab>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<C-S-Tab>", ":BufferLineCyclePrev<CR>", opts)
