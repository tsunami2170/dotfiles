-- init lazyvim 
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- install lazynvim if not yet
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

-- import plugins
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  spec = { { import = "plugins" },},
  defaults = {
    lazy = false,
    version = "*",
  },
})

---- ignore message including 'position_encoding'
--local notify_suppress_group = vim.api.nvim_create_augroup("NotifySuppress", { clear = true })
--
--vim.api.nvim_create_autocmd("VimEnter", {
--  group = notify_suppress_group,
--  pattern = "*",
--  callback = function()
--    local original_notify = vim.notify
--    vim.notify = function(msg, level, opts)
--      if msg and type(msg) == "string" and msg:match("position_encoding param is required") then
--        return
--      end
--      original_notify(msg, level, opts)
--    end
--  end,
--})
