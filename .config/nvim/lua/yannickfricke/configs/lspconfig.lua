require'lspinstall'.setup()

local servers = require'lspinstall'.installed_servers()
local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'

for _, server in pairs(servers) do
  if server == "yaml" then
    require'lspconfig'['yaml'].setup{
      settings = {
        yaml = {
          schemas = {
            ["https://raw.githubusercontent.com/docker/compose/master/compose/config/compose_spec.json"] = "/docker-compose.yaml"
          }
        }
      }
    }
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
