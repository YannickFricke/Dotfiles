local utils = require 'yannickfricke.utils'

utils.key_mapper('n', 'gd', ':lua vim.lsp.buf.definition()<CR>')
utils.key_mapper('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>')
utils.key_mapper('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>')
utils.key_mapper('n', 'gw', ':lua vim.lsp.buf.document_symbol()<CR>')
utils.key_mapper('n', 'gW', ':lua vim.lsp.buf.workspace_symbol()<CR>')
utils.key_mapper('n', 'gr', ':lua vim.lsp.buf.references()<CR>')
utils.key_mapper('n', 'gt', ':lua vim.lsp.buf.type_definition()<CR>')
utils.key_mapper('n', 'K', ':lua vim.lsp.buf.hover()<CR>')
utils.key_mapper('n', '<c-k>', ':lua vim.lsp.buf.signature_help()<CR>')
utils.key_mapper('n', '<a-CR>', ':lua vim.lsp.buf.code_action()<CR>')
utils.key_mapper('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')

-- Diagnostics
utils.key_mapper('n', '<leader>dn', ':lua vim.lsp.diagnostic.goto_next()<CR>')
utils.key_mapper('n', '<leader>dp', ':lua vim.lsp.diagnostic.goto_prev()<CR>')
utils.key_mapper('n', '<leader>ds', ':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
