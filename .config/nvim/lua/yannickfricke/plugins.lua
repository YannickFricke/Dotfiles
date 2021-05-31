local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
	execute 'packadd packer.nvim'
end

vim.cmd('packadd packer.nvim')

local packer = require'packer'
local util = require'packer.util'

packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack'),
	git = {
		clone_timeout = 600
	}
})

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return packer.startup(function()
  local use = packer.use

	-- Let packer manage itself
	use { 'wbthomason/packer.nvim', opt = true }

	-- LSP integration
	use 'neovim/nvim-lspconfig'
	use 'kabouzeid/nvim-lspinstall'

	-- UI for managing databases
	use {
		'kristijanhusak/vim-dadbod-ui',
		requires = {{'tpope/vim-dadbod'}}
	}

	-- Alternative auto completions
	use {
		'hrsh7th/nvim-compe',
		{
			'tzachar/compe-tabnine',
			run = './install.sh'
		},
		{
			'kristijanhusak/vim-dadbod-completion'
		}
	}

	-- Snippet management for (N)VIM
	use {
		'hrsh7th/vim-vsnip',
		requires = {
			-- JavaScript / TypeScript / Html / Vue snippets
			{ 'xabikos/vscode-javascript' }
		}
	}

	-- Pictograms for the completions
	use 'onsails/lspkind-nvim'

	-- Colorscheme for NVIM (based on monokai)
	use 'sainnhe/sonokai'

	-- Telescope.nvim provides a nice search view for files / buffers
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}

	-- A pretty list for showing diagnostics
	use {
		"folke/lsp-trouble.nvim",
    config = function()
      require("trouble").setup {
				auto_preview = false,
				auto_fold = true
			}
		end
	}

	-- Show line indentation
	use 'Yggdroot/indentLine'

	-- A better start screen for (N)VIM
	use 'mhinz/vim-startify'

	-- Use "ripgrep" inside nvim
	use 'jremmen/vim-ripgrep'

	-- nvim-tree shows a file tree on the side
	use 'kyazdani42/nvim-tree.lua'

	-- File icons
	use 'kyazdani42/nvim-web-devicons'
	use 'bryanmylee/vim-colorscheme-icons'

	-- Automatically close pairs
	use 'jiangmiao/auto-pairs'

  -- Treesitter offers better syntax highlighting support
	use {
			'nvim-treesitter/nvim-treesitter',
			run = ":TSUpdate",
			{
				'p00f/nvim-ts-rainbow'
			}
	}

  -- Language packs for nvim
  use 'sheerun/vim-polyglot'

  -- UndoTree offers a visualization of recent changes
  use 'mbbill/undotree'

	-- Distraction free mode
	use {
		'junegunn/goyo.vim',

		-- Highlight single blocks of texts for more focus
		requires = {{"junegunn/limelight.vim"}}
	}

	-- Mark trailing whitespaces as errors
	use 'ntpeters/vim-better-whitespace'

	-- Code::Stats
	-- use {
	-- 	'~/codestats-lua-plugin',
	-- 	rocks = { 'lua-requests' }
	-- }

	-- GIT related stuff

	-- Displays git line info (added, modified)
	use {
		'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('gitsigns').setup()
		end
	}

	-- GIT Worktree support
	use {
		"ThePrimeagen/git-worktree.nvim",
		config = function()
			require("git-worktree").setup()
		end
	}

	-- WhichKey displays a popup with possible key bindings of the command you started typing
	use {
    "folke/which-key.nvim",
		config = function()
			require("which-key").setup()
		end
	}

	-- Languages related stuff

	-- Codi is an interactive scratchpad
	use 'metakirby5/codi.vim'

	-- JavaScript / TypeScript related stuff
	-- TODO: Check if needed

	use 'leafgarland/typescript-vim'
  use 'pangloss/vim-javascript'
  use 'peitalin/vim-jsx-typescript'
  use {'prettier/vim-prettier', run = 'yarn install' }
end)
