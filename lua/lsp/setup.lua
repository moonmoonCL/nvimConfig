require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "tsserver",
    "tailwindcss",
    "bashls",
    "cssls",
    "dockerls",
    "emmet_ls",
    "html",
    "jsonls",
    "pyright",
    "taplo",
    "yamlls",
    "rust_analyzer",
  },
})
local lspconfig = require('lspconfig')

-- After setting up mason-lspconfig you may set up servers via lspconfig
lspconfig.lua_ls.setup{}
lspconfig.tsserver.setup{}
lspconfig.tailwindcss.setup{}
lspconfig.bashls.setup{}
lspconfig.cssls.setup{}
lspconfig.dockerls.setup{}
lspconfig.emmet_ls.setup{}
lspconfig.html.setup{}
lspconfig.jsonls.setup{}
lspconfig.pyright.setup{}
lspconfig.taplo.setup{}
lspconfig.yamlls.setup{}
lspconfig.rust_analyzer.setup{}


