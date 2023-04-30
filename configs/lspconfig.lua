local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

require'lspconfig'.html.setup ({
  on_attach = on_attach,
  capabilities = capabilities,
})

require'lspconfig'.cssls.setup ({
  on_attach = on_attach,
  capabilities = capabilities,
})

require'lspconfig'.emmet_ls.setup ({
  on_attach = on_attach,
  capabilities = capabilities,
  ft = {
    "html", "css",
  }
})
