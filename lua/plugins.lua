return require("packer").startup(function()
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	-- Theme
	use({
		"ellisonleao/gruvbox.nvim",
		requires = { "rktjmp/lush.nvim" },
	})
	use("ful1e5/onedark.nvim")
	use("folke/tokyonight.nvim")
	-- NvimTree
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})
	use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
	-- lualine
	use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
	use("arkav/lualine-lsp-progress")
	-- telescope
	use({ "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } })
	-- treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	-- lsp
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	-- 补全引擎
	use("hrsh7th/nvim-cmp")
	-- snippet 引擎
	use("hrsh7th/vim-vsnip")
	-- 补全源
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
	use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
	use("hrsh7th/cmp-path") -- { name = 'path' }
	use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

	-- 常见编程语言代码段
	use("rafamadriz/friendly-snippets")

	-- UI
	use("lukas-reineke/indent-blankline.nvim")
	-- formatter
	use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
	use({ "ggandor/leap.nvim", requires = "tpope/vim-repeat" })
	use("echasnovski/mini.pairs")
	use("NvChad/nvim-colorizer.lua")
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use("aspeddro/gitui.nvim")
	use({
		"Pocco81/true-zen.nvim",
		config = function()
			require("true-zen").setup({
				-- your config goes here
				-- or just leave it empty :)
			})
		end,
	})
	use("lewis6991/gitsigns.nvim")
	use({
		"akinsho/git-conflict.nvim",
		tag = "*",
		config = function()
			require("git-conflict").setup()
		end,
	})

	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})
	use({
		"braxtons12/blame_line.nvim",
		config = function()
			require("blame_line").setup({})
		end,
	})
	use("sindrets/diffview.nvim")
	use({
		"m4xshen/hardtime.nvim",
		config = function()
			require("hardtime").setup({})
		end,
	})
	use("Abstract-IDE/penvim")
	use({ "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" })
end)
