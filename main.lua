-- Escape in normal mode to get 'i'
vim.keymap.set('n', '<ESC>', 'i')

-- Ctrl+Z, Ctrl+Shift+Z/Ctrl+Y -> Undo, Redo
vim.keymap.set('i', '<c-z>', '<ESC>ua')
vim.keymap.set('n', '<c-z>', 'u')
vim.keymap.set('i', '<cs-z>', '<ESC><c-r>a')
vim.keymap.set('n', '<cs-z>', '<c-r>')
vim.keymap.set('i', '<c-y>', '<ESC><c-r>a')
vim.keymap.set('n', '<c-y>', '<c-r>')

-- Ctrl+C, Ctrl+V, Ctrl+X -> Copy, Paste, Cut
vim.keymap.set('v', '<c-c>', 'yi')
vim.keymap.set('n', '<c-c>', 'yy')
vim.keymap.set('i', '<c-c>', '<ESC>yyi')

vim.keymap.set({ 'v', 'n' }, '<c-v>', 'p')
vim.keymap.set('i', '<c-v>', '<ESC>pi<Right>')

vim.keymap.set('v', '<c-x>', 'di')
vim.keymap.set('n', '<c-x>', '^d$')
vim.keymap.set('i', '<c-x>', '<ESC>^d$i')

-- Visual Mode Backspace
vim.keymap.set('v', '<BS>', 'd')

-- Shift+Up, Shift-Down, Shift-Left, Shift-Right -> Highlight line up, Highlight line down, Highlight character left, Highlight line right
vim.keymap.set('v', '<s-Up>', 'k')
vim.keymap.set('n', '<s-Up>', 'vkl')
vim.keymap.set('i', '<s-Up>', '<ESC>vkl')

vim.keymap.set('v', '<s-Down>', 'j')
vim.keymap.set('n', '<s-Down>', 'vjh')
vim.keymap.set('i', '<s-Down>', '<ESC>lvjh')

vim.keymap.set('v', '<s-Right>', 'l')
vim.keymap.set('n', '<s-Right>', 'vlh')
vim.keymap.set('i', '<s-Right>', '<ESC>lvlh')

vim.keymap.set('v', '<s-Left>', 'h')
vim.keymap.set('n', '<s-Left>', 'v')
vim.keymap.set('i', '<s-Left>', '<ESC>vhl')

-- Shift + Home, Shift + End -> Highlight to beginning of line, Highlight to end of line
vim.keymap.set('n', '<s-Home>', 'v^')
vim.keymap.set('i', '<s-Home>', '<ESC>v^')
vim.keymap.set('n', '<s-End>', 'v$')
vim.keymap.set('i', '<s-End>', '<ESC>lv$')

-- Backspace + Enter in normal mode
vim.keymap.set('n', '<BS>', 'dhi')
vim.keymap.set('n', '<CR>', 'i<CR>')

-- Ctrl + Backspace -> Delete word back
vim.keymap.set('n', '<c-BS>', 'dBxa')
vim.keymap.set('i', '<c-BS>', '<ESC>dBxa')

-- Ctrl + S, Ctrl + Q -> Save, Write and quit file from buffer
vim.keymap.set('n', '<c-s>', ':w<CR>')
vim.keymap.set('i', '<c-s>', '<ESC>:w<CR>a')
vim.keymap.set('n', '<c-q>', ':w<CR>:bd<CR>')
vim.keymap.set('i', '<c-q>', '<ESC>:w<CR>:bd<CR>i')

-- Ctrl + Tab, Ctrl + Shift + Tab -> Switch to next tab, switch to previous tab
vim.keymap.set('n', '<c-Tab>', ':bnext<CR>')
vim.keymap.set('i', '<c-Tab>', '<ESC>:bnext<CR>i')
vim.keymap.set('n', '<cs-Tab>', ':bprevious<CR>')
vim.keymap.set('i', '<cs-Tab>', '<ESC>:bprevious<CR>i')

-- Ctrl + / -> Toggle Comment
-- vim.keymap.set('v', '<C-/>', 'gb')
-- vim.keymap.set('n', '<C-/>', 'gcc')
-- vim.keymap.set('i', '<C-/>', '<ESC>gcci')

-- Alt + Up, Alt + Down -> Move line of text up, move line of text down
vim.keymap.set('n', '<a-Up>', 'ddk^P')
vim.keymap.set('i', '<a-Up>', '<ESC>ddk^Pa')
vim.keymap.set('n', '<a-Down>', 'ddj^P')
vim.keymap.set('i', '<a-Down>', '<ESC>ddj^Pa')

-- Ctrl + Right, Ctrl + Left -> Navigate words
vim.keymap.set({ 'v', 'n' }, '<c-Right>', 'e')
vim.keymap.set('i', '<c-Right>', '<ESC>ei<Right>')
vim.keymap.set({ 'v', 'n' }, '<c-Left>', 'b')
vim.keymap.set('i', '<c-Left>', '<ESC>bi')

-- Tab selected lines in visual mode
vim.keymap.set('v', '<Tab>', '>')
vim.keymap.set('v', '<S-Tab>', '<')

-- Use Ctrl+Shift+Arrow keys to navigate windows
vim.keymap.set('n', '<cs-Left>', '<c-w><Left>')
vim.keymap.set('i', '<cs-Left>', '<ESC><c-w><Left>i')
vim.keymap.set('n', '<cs-Right>', '<c-w><Right>')
vim.keymap.set('i', '<cs-Right>', '<ESC><c-w><Right>i')
vim.keymap.set('n', '<cs-Up>', '<c-w><Up>')
vim.keymap.set('i', '<cs-Up>', '<ESC><c-w><Up>i')
vim.keymap.set('n', '<cs-Down>', '<c-w><Down>')
vim.keymap.set('i', '<cs-Down>', '<ESC><c-w><Down>i')

-- Ctrl + T, Ctrl + Page Up, Ctrl + Page Down -> Create new Tab, Previous Tab, Next Tab
vim.keymap.set({ 'v', 'i' }, '<c-t>', '<ESC>:tabnew<CR>:NvimTreeOpen<CR>i')
vim.keymap.set('n', '<c-t>', ':tabnew<CR>:NvimTreeOpen<CR>')

vim.keymap.set({ 'v', 'i' }, '<c-PageUp>', '<ESC>:tabprevious<CR>i')
vim.keymap.set('n', '<c-PageUp>', ':tabprevious<CR>')
vim.keymap.set({ 'v', 'i' }, '<c-PageDown>', '<ESC>:tabprevious<CR>i')
vim.keymap.set('n', '<c-PageDown>', ':tabnext<CR>')

-- Ctrl + . -> Toggle fold under cursor
vim.keymap.set('n', '<c-.>', 'za')
vim.keymap.set('i', '<c-.>', '<ESC>za<Down>i')

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Enable folding with treesitter, with displays and a default fold level of 20 (anything under stays open by default)
vim.opt.foldcolumn = 'auto:9'
vim.opt.foldlevel = 20
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

vim.cmd [[

vmap <c-/> gb
nmap <c-/> gcc
imap <c-/> <ESC>gcci

]]
