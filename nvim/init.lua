require("vim-opts")
require("vim-binds")
require("config.lazy")

vim.g.python3_host_prog = vim.fn.exepath 'python3'
vim.g.loaded_python3_provider = nil
vim.cmd('runtime! plugin/rplugin.vim')
