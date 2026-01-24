vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>E', ':NvimTreeFocus<CR>')
vim.keymap.set('n', '<leader>rnu', ':set relativenumber<CR>')
vim.keymap.set('n', '<leader>nu', ':set norelativenumber<CR>')
vim.keymap.set('n', '<Esc>', ':noh<CR>')
vim.keymap.set('n', '<A-f>', ':ToggleTerm direction=float<CR>')
vim.keymap.set('n', '<A-t>', ':ToggleTerm<CR>')
vim.keymap.set('t', '<A-q>', '<c-\\><c-n> :ToggleTerm<CR>')

-- nnoremap <silent><expr> <LocalLeader>r  :MagmaEvaluateOperator<CR>
-- nnoremap <silent>       <LocalLeader>rr :MagmaEvaluateLine<CR>
-- xnoremap <silent>       <LocalLeader>r  :<C-u>MagmaEvaluateVisual<CR>
-- nnoremap <silent>       <LocalLeader>rc :MagmaReevaluateCell<CR>
-- nnoremap <silent>       <LocalLeader>rd :MagmaDelete<CR>
-- nnoremap <silent>       <LocalLeader>ro :MagmaShowOutput<CR>

-- let g:magma_automatically_open_output = v:false
-- let g:magma_image_provider = "ueberzug"

vim.keymap.set('n', '<leader>r', ':MagmaEvaluateOperator<CR>')
vim.keymap.set('n', '<leader>rr', ':MagmaEvaluateLine<CR>')
vim.keymap.set('n', '<leader>r', ':<C-u>MagmaEvaluateVisual<CR>')
vim.keymap.set('n', '<leader>rc', ':MagmaReevaluateCell<CR>')
vim.keymap.set('n', '<leader>rd', ':MagmaDelete<CR>')
vim.keymap.set('n', '<leader>ro', ':MagmaShowOutput<CR>')
