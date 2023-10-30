local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
	{ 'phaazon/hop.nvim' },
	{ 'nvim-treesitter/nvim-treesitter' },
	{ 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/vim-vsnip' },
    { 'mfussenegger/nvim-lint' },
    { 'mattn/emmet-vim' },
    {
        "Jezda1337/nvim-html-css",
        dependencies = {
          "nvim-treesitter/nvim-treesitter",
          "nvim-lua/plenary.nvim",
        },
      },
      { 'lervag/vimtex',
         opt = true,
         ft = 'tex' },
})
