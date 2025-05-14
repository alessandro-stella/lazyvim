return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              -- Usa l'interprete della venv locale, se esiste
              pythonPath = (function()
                local cwd = vim.fn.getcwd()
                local venv_path = cwd .. "/.venv/bin/python"
                if vim.fn.executable(venv_path) == 1 then
                  return venv_path
                else
                  return vim.fn.exepath("python3") or "python3"
                end
              end)(),
            },
          },
        },
      },
    },
  },
}
