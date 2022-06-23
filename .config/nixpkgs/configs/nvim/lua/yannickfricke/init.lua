require 'yannickfricke.plugins'
require 'yannickfricke.configs'
require 'yannickfricke.keybinds'

-- For debugging
function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, {...})
    print(unpack(objects))
end
