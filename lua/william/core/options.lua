vim.cmd("set number")
vim.cmd("set breakindent")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set termguicolors")
vim.cmd("set scrolloff=8")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.o.shiftwidth=2
vim.o.softtabstop=2

vim.cmd([[
command! Compile execute ':w' | execute '!javac -d bin ' . expand('%:p')
]])

vim.cmd([[
command! -nargs=1 Run execute '!tmux popup -E "java -cp bin ' . <q-args> . '; exec fish"'
]])
