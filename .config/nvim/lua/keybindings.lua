local utils = require('utils')

utils.map('n', '<C-b>', '<cmd>NvimTreeToggle<CR>', {silent = true})
utils.map('n', '<leader>r', '<cmd>NvimTreeRefresh<CR>')
-- utils.map('n', '<C-p>', '<cmd>FZF<CR>')
-- utils.map('n', '<C-f>', '<cmd>Rg<CR>')
utils.map('n', '<C-p>', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>')
utils.map('n', '<C-f>', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>')
utils.map('n', ',', '<cmd>BufferPrevious<CR>', {silent = true})
utils.map('n', '.', '<cmd>BufferNext<CR>', {silent = true})
utils.map('n', '[;', '<cmd>BufferClose<CR>', {silent = true})

function _G.smart_tab()
    return vim.fn.pumvisible() == 1 and utils.t'<C-n>' or utils.t'<Tab>'
end

vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})

