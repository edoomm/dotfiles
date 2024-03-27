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

local plugins = {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	},
	{
		"folke/tokyonight.nvim", lazy = false,
		priority = 1000, opts = {},
	},
	{ "gaoDean/autolist.nvim", ft = { "markdown", }, enabled=false, },
	{ 'kkoomen/vim-doge', build = ':call doge#install()', },
	{ 'tpope/vim-fugitive', },
	{ 'nvim-lualine/lualine.nvim', },
	{
		'numToStr/Comment.nvim', lazy = false,
		config = function ()
			require("Comment").setup()
		end,
	},
	{ "folke/todo-comments.nvim", opts = {}, },
}

require("lazy").setup(plugins)
