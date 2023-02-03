local keymap = vim.keymap

keymap.set("i", "jk", "<Esc>", { noremap = true })
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')
keymap.set('n', 'cs', ':let @+=expand("%")<CR>')
keymap.set('n', 'cl', ':let @+=expand("%:p")<CR>')
keymap.set('n', 'co', ':%y+<CR>')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')

-- Split window
keymap.set('n', '<Space>-', ':split<Return><C-w>w')
keymap.set('n', '<Space>\\', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', '<Space>h', '<C-w>h')
keymap.set('', '<Space>k', '<C-w>k')
keymap.set('', '<Space>j', '<C-w>j')
keymap.set('', '<Space>l', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
