-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Open Neo-tree on startup",
  callback = function()
    -- Small delay to ensure plugins are loaded
    vim.defer_fn(function()
      require("neo-tree.command").execute({ action = "show" })
    end, 10)
  end,
})
