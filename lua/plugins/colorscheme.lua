return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nightfox").setup({
        options = {
          transparent = true,         -- set to true if you want a transparent background
          terminal_colors = true,      -- enable terminal colors
          styles = {
            comments = "italic",
            keywords = "bold",
            functions = "italic,bold",
            strings = "NONE",
            variables = "NONE",
          },
        },
      })
      vim.cmd("colorscheme carbonfox")
    end,
  },
}
