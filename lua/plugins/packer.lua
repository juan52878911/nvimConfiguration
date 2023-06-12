-- Verificar si Packer está instalado
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'
local packer_exists = vim.fn.empty(vim.fn.glob(install_path)) == 0

-- Si Packer no está instalado, clonarlo desde el repositorio de GitHub
if not packer_exists then
    print('Packer no encontrado. Descargando e instalando...')
    vim.fn.system({ 'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd('packadd packer.nvim')
    print('Packer instalado.')
end

-- Configuración de plugins
vim.cmd([[packadd packer.nvim]])

return require('packer').startup(function(use)
    -- Github theme 
    use({
        'projekt0n/github-nvim-theme',
        config = function()
            vim.cmd('colorscheme github_dark_colorblind')
        end
    })

    -- Treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = 'require "plugins.config.treesitter"'
    })

    -- Telescope
    use({
	    "nvim-telescope/telescope.nvim",
        tag = '0.1.1',
        branch = '0.1.x',
	    requires = { "nvim-lua/plenary.nvim" },
	    config = 'require "plugins.config.telescope"'
    })

    -- Comentarios
  	use({
        "numToStr/Comment.nvim",
        config = 'require "plugins.config.comment"'
    })

    -- Popups
    use({
        "nvim-lua/popup.nvim"
    })

    -- Telescope read file support
    use({
        "nvim-telescope/telescope-media-files.nvim"
    })

    -- File explorer
    use({
        "kyazdani42/nvim-tree.lua",
        config = 'require "plugins.config.nvim-tree"'
    })

    -- Better indents
   	use({
        "lukas-reineke/indent-blankline.nvim",
        config = 'require"plugins.config.indent-blankline"'
    })

    -- Lua line
    use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = 'require "plugins.config.lualine"',
	})

    -- Buffer Line
    use({
		"akinsho/bufferline.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = 'require "plugins.config.bufferline"',
	})

    --CMP Plugins
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-cmdline") -- cmdline completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("hrsh7th/cmp-nvim-lsp")

    -- LSP progress
    use("arkav/lualine-lsp-progress")

    -- null ls
    use({ "jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim" } })

    --git
	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = 'require "plugins.config.gitsigns"',
	})

    -- Terminal
   	use({
        "akinsho/toggleterm.nvim",
        config = 'require "plugins.config.toggleterm"'
    })

    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    })

    -- Notificaciones
    use ({
        "rcarriga/nvim-notify",
    })

    -- LSP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    -- Formatter
    use 'mhartington/formatter.nvim'
end)
