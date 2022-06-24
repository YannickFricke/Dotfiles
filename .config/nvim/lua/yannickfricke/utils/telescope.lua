local builtin = require 'telescope.builtin'
local Module = {}

Module.find_files = function()
    builtin.find_files()
end

return Module
