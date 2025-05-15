return {
    "neovim/nvim-lspconfig",
    dependencies = { "saghen/blink.cmp" },
    opts = {
        servers = {
            lua_ls = {},
        },
        pyright = {
            settings = {
                python = {
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
}
