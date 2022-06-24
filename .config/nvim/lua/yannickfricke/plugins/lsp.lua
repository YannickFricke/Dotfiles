-- Setup the language server installer
require("nvim-lsp-installer").setup({
    automatic_installation = true,
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

require("lsp-format").setup({})

local installed_servers = require('nvim-lsp-installer.servers').get_installed_server_names()

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client)
    require "lsp-format".on_attach(client)
end

for _, v in ipairs(installed_servers) do
    require('lspconfig')[v].setup {
        capabilities = capabilities,
        on_attach = on_attach
    }
end
