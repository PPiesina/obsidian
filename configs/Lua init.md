```Lua

vim.g.mapleader = ' '
-- initial dir when opening
vim.cmd.cd('C:\\Users\\Paulius\\Desktop\\projects')
-- open configs
vim.cmd('nmap <leader>cc :e C:\\Users\\Paulius\\AppData\\Local\\nvim\\init.lua<cr>')
vim.cmd('nmap <leader>cv :e C:\\Users\\Paulius\\AppData\\Roaming\\Code\\User\\keybindings.json<cr>')
vim.cmd('nmap <leader>cx :e C:\\Users\\Paulius\\AppData\\Roaming\\Code\\User\\settings.json<cr>')
vim.cmd('nmap <leader>cz :e C:\\Users\\Paulius\\AppData\\Roaming\\Code\\User\\snippets\\')

-- paste without overwriting
vim.keymap.set('v', 'p', 'P')
-- redo
vim.keymap.set('n', 'U', '<C-r>')

-- clear search highlighting
vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')

-- sync system clipboard
vim.opt.clipboard = 'unnamedplus'

-- search ignoring case
vim.opt.ignorecase = true

-- disable "ignorecase" option if the search pattern contains upper case characters
vim.opt.smartcase = true

-- insert Enter while keeping normal mode
vim.keymap.set('n', '<leader>o', 'i<cr><Esc>')

-- select all text in file 
vim.keymap.set({'n','i','v'}, '<C-a>', '<Esc>gg0vG$')

-- surround [selected] text with input
vim.keymap.set({'v'}, '(', 'xi()<Esc>P')
vim.keymap.set({'v'}, '{', 'xi{}<Esc>P')
vim.keymap.set({'v'}, '[', 'xi[]<Esc>P')
vim.keymap.set({'v'}, '"', 'xi""<Esc>P')
vim.keymap.set({'v'}, '\'', 'xi\'\'<Esc>P')


-- select mthod
vim.keymap.set({'n'}, '<leader>m', '0v$%')

-- fast vertical movement
vim.cmd('nmap J 15j')
vim.cmd('nmap K 15k')

-- <C-c/v> bindings for copy/paste 
vim.keymap.set({'v'}, '<C-c>', 'y')
vim.keymap.set({'i'}, '<C-v>', '<C-r>"')
vim.keymap.set({'n','v'}, '<C-v>', 'P')

-- relative numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.signcolumn = "number"

```