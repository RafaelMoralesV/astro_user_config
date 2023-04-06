-- TODO: Test

return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },
  {
    "akinsho/flutter-tools.nvim", -- add lsp plugin
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    keys = {
      { "<leader>F", desc = "Flutter Tools" },
      { "<leader>Fs", "<cmd>FlutterRun<cr>", desc = "Run the current flutter project" },
      { "<leader>Fx", "<cmd>FlutterQuit<cr>", desc = "Ends a running session" },
      { "<leader>Fr", "<cmd>FlutterReload<cr>", desc = "Reloads the running project." },
      { "<leader>FR", "<cmd>FlutterRestart<cr>", desc = "Restarts the current project" },
      { "<leader>Fd", "<cmd>FlutterDevices<cr>", desc = "Brings up list of connected devices." },
    },
  },
}
