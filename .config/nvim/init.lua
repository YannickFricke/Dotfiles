utils = require('yannickfricke/utils')

print("Using Yannick Frickes NVIM "..utils.SUPPORTED_VERSION.." configuration")

local packer_bootstrap = utils.InstallPacker()

return require('packer').startup(function(use)
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
