return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" }
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").lua_ls.setup({})
      vim.keymap.set('n', 'H', vim.lsp.buf.hover, { desc = "LSP Hover Docs" })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "LSP code actions" })
      vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, { desc = "LSP rename symbol" })
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "LSP go to definition" })
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "LSP go to declaration" })
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = "LSP go to implementation" })
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { desc = "LSP Function Signature Help" })
      vim.keymap.set('n', '<leader>td', vim.lsp.buf.type_definition, { desc = "LSP Type definition" })
    end,
  },
}
