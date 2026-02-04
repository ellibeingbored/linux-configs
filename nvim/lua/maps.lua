local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Telescope
vim.keymap.set('n', '<leader>tt', "<CMD>lua require('telescope.builtin').find_files()<CR>", { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>tg', "<CMD>lua require('telescope.builtin').live_grep()<CR>", { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>tb', "<CMD>lua require('telescope.builtin').buffers()<CR>", { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>th', "<CMD>lua require('telescope.builtin').help_tags()<CR>", { desc = 'Telescope help tags' })

-- Tree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', {
    noremap = true
});

-- Goyo
vim.keymap.set('n', '<leader>g', ':Goyo<CR>', {
    noremap = true
});

vim.g.goyo_width = 81

vim.api.nvim_create_autocmd("User", {
  pattern = "GoyoEnter",
  callback = function()
    vim.opt.scrolloff = 999
    vim.cmd("Limelight")

    -- Visual line motions
    vim.keymap.set('n', 'j', 'gj', { noremap = true, silent = true, buffer = true })
    vim.keymap.set('n', 'k', 'gk', { noremap = true, silent = true, buffer = true })
    vim.keymap.set('n', '0', 'g0', { noremap = true, silent = true, buffer = true })
    vim.keymap.set('n', '$', 'g$', { noremap = true, silent = true, buffer = true })

    vim.keymap.set('v', 'j', 'gj', { noremap = true, silent = true, buffer = true })
    vim.keymap.set('v', 'k', 'gk', { noremap = true, silent = true, buffer = true })
    vim.keymap.set('v', '0', 'g0', { noremap = true, silent = true, buffer = true })
    vim.keymap.set('v', '$', 'g$', { noremap = true, silent = true, buffer = true })
  end,
})

vim.api.nvim_create_autocmd("User", {
  pattern = "GoyoLeave",
  callback = function()
    vim.opt.scrolloff = 5
    vim.cmd("Limelight!")

    -- Remove visual line motions
    vim.keymap.del('n', 'j', { buffer = true })
    vim.keymap.del('n', 'k', { buffer = true })
    vim.keymap.del('n', '0', { buffer = true })
    vim.keymap.del('n', '$', { buffer = true })

    vim.keymap.del('v', 'j', { buffer = true })
    vim.keymap.del('v', 'k', { buffer = true })
    vim.keymap.del('v', '0', { buffer = true })
    vim.keymap.del('v', '$', { buffer = true })
  end,
})

