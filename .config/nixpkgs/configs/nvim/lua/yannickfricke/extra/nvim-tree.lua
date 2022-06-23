local tree_view = require'nvim-tree.view'

local tree = {}

tree.toggle = function ()
  if tree_view.win_open() then
    require'bufferline.state'.set_offset(0)
    require'nvim-tree'.close()
  else
    require'bufferline.state'.set_offset(31, 'FileTree')
    require'nvim-tree'.find_file(true)
  end
end

return tree
