return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>ff", 
        "<cmd>Telescope find_files<CR>",
        desc = "Find Files",
      },
      {
        "<leader>fg",
        "<cmd>Telescope live_grep<CR>",
        desc = "Live Grep",
      },
      {
        "<leader>fb",
        "<cmd>Telescope buffers<CR>",
        desc = "Find Buffers",
      },
      {
        "<leader>fh",
        "<cmd>Telescope help_tags<CR>",
        desc = "Find Help Tags",
      },
      {
        "<leader>/",  
        "<cmd>Telescope current_buffer_fuzzy_find<CR>",
        desc = "Fuzzy Search in Current File",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          prompt_position = "bottom",
        },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}

