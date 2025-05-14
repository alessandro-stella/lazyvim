-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    local term_buf = vim.api.nvim_get_current_buf()
    local chan_id = vim.b.terminal_job_id -- ID del terminale appena aperto
    local venv = vim.fn.getcwd() .. "/.venv/bin/activate"

    if vim.fn.filereadable(venv) == 1 and chan_id then
      -- Invia il comando al terminale *dopo un breve ritardo*
      vim.defer_fn(function()
        vim.api.nvim_chan_send(chan_id, "source " .. venv .. "\n")
      end, 100) -- attesa di 100ms
    end
  end,
})
