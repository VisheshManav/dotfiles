-- Define key mappings
vim.api.nvim_set_keymap('n', '<LocalLeader>r', ':MagmaEvaluateOperator<CR>', { silent = true, expr = true })
vim.api.nvim_set_keymap('n', '<LocalLeader>rr', ':MagmaEvaluateLine<CR>', { silent = true })
vim.api.nvim_set_keymap('x', '<LocalLeader>r', ':<C-u>MagmaEvaluateVisual<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<LocalLeader>rc', ':MagmaReevaluateCell<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<LocalLeader>rd', ':MagmaDelete<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<LocalLeader>ro', ':MagmaShowOutput<CR>', { silent = true })

-- Set global variables
vim.g.magma_automatically_open_output = false
vim.g.magma_image_provider = "ueberzug"

