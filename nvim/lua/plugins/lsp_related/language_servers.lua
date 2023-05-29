local lspconfig = require('lspconfig')
local neodev = require('neodev')

-- Rust language server setup
lspconfig.rust_analyzer.setup{
	on_attach = neodev.on_attach,
	capabilities = neodev.capabilities
}

-- Python language server setup
lspconfig.pyright.setup{
	on_attach = neodev.on_attach,
	capabilities = neodev.capabilities
}

-- C language server setup
lspconfig.clangd.setup{
	on_attach = neodev.on_attach,
	capabilities = neodev.capabilities
}

-- Shell language server
lspconfig.bashls.setup {
	on_attach = neodev.on_attach,
	capabilities = neodev.capabilities
}

-- -- JavaScript and TypeScript language server
-- lspconfig.tsserver.setup {
-- 	on_attach = neodev.on_attach,
-- 	capabilities = neodev.capabilities
-- }
--
-- -- Ruby language server
-- lspconfig.solargraph.setup {
-- 	on_attach = neodev.on_attach,
-- 	capabilities = neodev.capabilities
-- }
--
-- -- Go language server
-- lspconfig.gopls.setup {
-- 	on_attach = neodev.on_attach,
-- 	capabilities = neodev.capabilities
-- }

-- -- Java language server setup
-- lspconfig.jdtls.setup {
--   on_attach = neodev.on_attach,
--   capabilities = neodev.capabilities
-- }

-- -- C# language server setup
-- lspconfig.omnisharp.setup {
--   on_attach = neodev.on_attach,
--   capabilities = neodev.capabilities
-- }

