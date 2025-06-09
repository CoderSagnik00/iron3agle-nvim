return {
  "nvimtools/none-ls.nvim",
  config = function()
    null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
      },
    })
    vim.keymap.set("n", "<C-s-i>", function()
      vim.lsp.buf.format({ async = true })
    end, { desc = "Format current buffer" })
  end,
}
