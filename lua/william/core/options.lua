vim.cmd("set number")
vim.cmd("set numberwidth")
vim.cmd("set breakindent")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set termguicolors")
vim.cmd("set scrolloff=8")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.o.shiftwidth=2
vim.o.softtabstop=2
vim.opt.termguicolors = true
--Minimalist--
vim.opt.laststatus = 0
vim.opt.cmdheight = 0
vim.opt.showmode = false
vim.opt.showcmd = false
vim.opt.ruler = false
vim.opt.cursorline = false
vim.opt.cursorcolumn = false
vim.opt.list = false
vim.opt.fillchars = { vert = " ", fold = " ", eob = " " }

--Keymaps--
vim.keymap.set('n', '<C-c>', ':Compile<CR>')
vim.keymap.set('n', '<C-t>', ':terminal<CR>')
--Stop--
vim.cmd([[
command! Compile execute ':w' | execute '!javac -d bin ' . expand('%:p')
]])

vim.cmd([[
command! -nargs=1 Run execute '!tmux popup -E "java -cp bin ' . <q-args> . '; exec fish"'
]])
