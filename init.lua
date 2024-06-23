local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

vim.g.mapleader = ' '
vim.opt.clipboard = 'unnamedplus'
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.o.autoread = true
vim.cmd([[
  autocmd FocusGained,BufEnter * checktime
]])
vim.o.shortmess = vim.o.shortmess .. 'c'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup("plugins")

-- keybindings
-- vim.keymap.set('n', '<leader>ft', function() vim.cmd('Neotree toggle') end)

-- keybindings for cp
vim.cmd('set makeprg=g++\\ %\\ -o\\ %<')
vim.cmd([[
  command! RunProgram execute ':!./%< < input.txt > output.txt'
]])

vim.api.nvim_set_keymap('n', '<leader>make', ':make<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>run', ':RunProgram<CR>', { noremap = true, silent = true })
