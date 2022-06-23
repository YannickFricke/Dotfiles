local packer_bootstrap = utils.InstallPacker()

require('packer').startup(function(use)
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

require('yannickfricke.plugins.nvim-tree')