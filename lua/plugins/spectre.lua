return {
  { "roobert/grug-far.nvim", enabled = false },
  {
    "nvim-pack/nvim-spectre",
    cmd = "Spectre",
    keys = {
      {
        "<leader>S",
        function()
          require("spectre").toggle()
        end,
        desc = "Toggle Spectre",
      },
      {
        "<leader>sw",
        function()
          require("spectre").open_visual({ select_word = true })
        end,
        mode = "n",
        desc = "Search current word (Spectre)",
      },
      {
        "<leader>sw",
        function()
          require("spectre").open_visual()
        end,
        mode = "v",
        desc = "Search selected text (Spectre)",
      },
    },
    opts = {}, -- puoi mettere configurazioni qui se vuoi
  },
}
