return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      prettier_custom = {
        command = "/home/ale/.npm-global/bin/prettier",
        args = { "--stdin-filepath", "$FILENAME" },
        stdin = true,
      },
    },
    formatters_by_ft = {
      -- Web / Frontend
      javascript = { "prettier_custom" },
      typescript = { "prettier_custom" },
      javascriptreact = { "prettier_custom" },
      typescriptreact = { "prettier_custom" },
      json = { "prettier_custom" },
      html = { "prettier_custom" },
      css = { "prettier_custom" },
      scss = { "prettier_custom" },
      markdown = { "prettier_custom" },
      yaml = { "prettier_custom" },

      -- Backend
      python = { "black" },
      prisma = { "prisma_fmt" },

      -- System languages
      c = { "clang_format" },
      cpp = { "clang_format" },

      -- Lua
      lua = { "stylua" },
    },
  },
}
