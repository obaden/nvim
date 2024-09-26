vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
---@diagnostic disable-next-line: undefined-field
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("core.options")
require("core.keymaps")

local function load_plugins()
  local plugin_dir = vim.fn.stdpath("config") .. "/lua/core/plugins"
  local plugin_files = vim.fn.glob(plugin_dir .. "/*.lua", false, true)

  local plugins = {}
  for _, file in ipairs(plugin_files) do
    local plugin = dofile(file) -- Load each plugin file
    table.insert(plugins, plugin) -- Add the plugin configuration to the list
  end

  require("lazy").setup(plugins) -- Initialize lazy.nvim with the plugin list
end

-- Call the function to load plugins
load_plugins()
