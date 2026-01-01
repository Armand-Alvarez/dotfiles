local k = vim.keymap


-- exit insert with jk
k.set('i', 'jk', '<Esc>')

-- Auto close 
k.set('i', '(', '()<Esc>i')
k.set('i', '[', '[]<Esc>i')
k.set('i', '{', '{}<Esc>i')

-- delete without removing clipboard
k.set('n', '<leader>d', '"_d')
k.set('v', '<leader>d', '"_d')

-- Open terminal
k.set('n', '<leader>T', ':split | terminal<CR>')

-- Move lines up and down
k.set('n', '<C-j>', ':m .+1<CR>>==')
k.set('n', '<C-k>', ':m .-2<CR>>==')

-- Run python script
k.set('n', '<leader>ep', ':w<CR>:!python3 %<CR>')

-- Remove highlight
k.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Surround with quotes and such
k.set('v', "<leader>s'", "c''<Esc>P")
k.set('v', '<leader>s"', 'c""<Esc>P')
k.set('v', "<leader>s(", "c()<Esc>P")
k.set('v', '<leader>s{', 'c{}<Esc>P')

k.set('n', '<leader>il', 'i[]()<Left><Left><Left><Esc>a')
