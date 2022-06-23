require'lspinstall'.setup()

local servers = require'lspinstall'.installed_servers()
local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'
local luadev = require("lua-dev").setup({
  library = {
    vimruntime = true, -- runtime path
    types = true, -- full signature, docs and completion of vim.api, vim.treesitter, vim.lsp and others
    plugins = true, -- installed opt or start plugins in packpath
    -- you can also specify the list of plugins to make available as a workspace library
    -- plugins = { "nvim-treesitter", "plenary.nvim", "telescope.nvim" },
  },
})

for _, server in pairs(servers) do
  if server == "yaml" then
    lspconfig['yaml'].setup{
      settings = {
        yaml = {
          schemas = {
            ["https://raw.githubusercontent.com/docker/compose/master/compose/config/compose_spec.json"] = "/docker-compose.yaml"
          }
        }
      }
    }
  elseif server == "lua" then
    lspconfig['lua'].setup(luadev)
  else
    require'lspconfig'[server].setup{}
  end
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

if not lspconfig.emmet_ls then
  configs.emmet_ls = {
    default_config = {
      cmd = {'emmet-ls', '--stdio'};
      filetypes = {'html', 'css'};
      root_dir = function(_)
        return vim.loop.cwd()
      end;
      settings = {};
    };
  }
end

lspconfig.emmet_ls.setup{ capabilities = capabilities; }
