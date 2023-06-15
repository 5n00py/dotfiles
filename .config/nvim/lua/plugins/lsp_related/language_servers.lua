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
	capabilities = neodev.capabilities,
	filetypes = { 'zsh', 'bash', 'sh' },
}

lspconfig.lua_ls.setup {
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = {'vim'},
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
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

