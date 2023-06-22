require('base')
require('plugins')
require('stdheader')

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "plugins.lua" },
  command = "PackerCompile",
})

vim.opt.expandtab = false

