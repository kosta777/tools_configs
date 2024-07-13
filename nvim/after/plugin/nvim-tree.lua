vim.g.loaded_newtr = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("nvim-tree").setup()

vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Set the keybinding to toggle nvim-tree
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Set keybindings for window navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Ensure smooth navigation to/from nvim-tree
vim.cmd([[
  augroup NvimTreeWindowNavigation
    autocmd!
    autocmd FileType NvimTree nnoremap <buffer> <C-h> :wincmd h<CR>
    autocmd FileType NvimTree nnoremap <buffer> <C-l> :wincmd l<CR>
  augroup END
]])

-- Store the nvim-tree window ID for enhanced navigation
vim.cmd([[
  augroup NvimTreeWindowID
    autocmd!
    autocmd BufEnter * if &filetype == 'NvimTree' | let g:nvim_tree_window = win_getid() | endif
    autocmd BufLeave * if &filetype == 'NvimTree' | let g:nvim_tree_window = -1 | endif
  augroup END
]])

-- Handle navigation when leaving NvimTree window
vim.api.nvim_set_keymap('n', '<C-h>', ':lua if vim.g.nvim_tree_window > 0 and vim.fn.win_getid() ~= vim.g.nvim_tree_window then vim.fn.win_gotoid(vim.g.nvim_tree_window) else vim.cmd("wincmd h") end<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':lua if vim.g.nvim_tree_window > 0 and vim.fn.win_getid() ~= vim.g.nvim_tree_window then vim.fn.win_gotoid(vim.g.nvim_tree_window) else vim.cmd("wincmd l") end<CR>', { noremap = true, silent = true })
