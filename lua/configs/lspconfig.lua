-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "clangd", "metals", "tailwindcss", "ts_ls", "dockerls", "sqlls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- extra filetypes for tailwind
lspconfig.tailwindcss.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetypes = { "html", "css", "rust" },
}

-- customization for rust_analyzer
-- lspconfig.rust_analyzer.setup {
--   on_attach = on_attach,
--   on_init = on_init,
--   capabilities = capabilities,
--   settings = {
--     ["rust-analyzer"] = {
--       assist = {
--         importMergeBehavior = "last",
--         importPrefix = "by_self",
--       },
--       cargo = {
--         allFeatures = true,
--         loadOutDirsFromCheck = true,
--         runBuildScripts = true,
--       },
--       checkOnSave = {
--         allFeatures = true,
--         command = "clippy",
--         extraArgs = { "--no-deps" },
--       },
--       inlayHints = {
--         enable = true,
--         typeHints = true,
--         parameterHints = true,
--         chainingHints = true,
--         maxLength = 100,
--       },
--       procMacro = {
--         enable = true,
--         ignored = {
--           ["async-trait"] = { "async_trait" },
--           ["napi-derive"] = { "napi" },
--           ["async-recursion"] = { "async_recursion" },
--         },
--       },
--     },
--   },
-- }
