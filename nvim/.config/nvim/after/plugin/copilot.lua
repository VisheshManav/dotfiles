-- copilot-remap.lua

local map = vim.api.nvim_set_keymap

-- Example remappings
-- Replace <leader> with your preferred leader key
-- Insert mode mappings
map('i', '<C-Space>', '<Plug>(copilot-next)', { noremap = false, silent = true })
map('i', '<C-Tab>', '<Plug>(copilot-previous)', { noremap = false, silent = true })
map('i', '<C-n>', '<Plug>(copilot-complete)', { noremap = false, silent = true })

-- Normal mode mappings
map('n', '<C-Space>', '<Plug>(copilot-next)', { noremap = false, silent = true })
map('n', '<C-Tab>', '<Plug>(copilot-previous)', { noremap = false, silent = true })

-- Visual mode mappings
map('v', '<C-Space>', '<Plug>(copilot-next)', { noremap = false, silent = true })
map('v', '<C-Tab>', '<Plug>(copilot-previous)', { noremap = false, silent = true })

-- Command mode mappings (for command-line mode)
map('c', '<C-Space>', '<Plug>(copilot-next)', { noremap = false, silent = true })
map('c', '<C-Tab>', '<Plug>(copilot-previous)', { noremap = false, silent = true })

-- You can add more mappings as needed following the same pattern

