-- local nvim_lsp = require("lspconfig")
-- nvim_lsp.rust_analyzer.setup({
--   check = { command = "clippy" },
--   checkOnSave = { command = "clippy" },
-- })

-- Set textwidth to 100 for automatic wrapping
vim.opt.textwidth = 100

-- Enable wrap and linebreak for better text formatting
vim.opt.wrap = true
vim.opt.linebreak = true

-- amongst your other pluginsi
return {
  --{
  --  "simrat39/rust-tools.nvim",
  --  config = function()
  --    require("rust-tools").setup({
  --      -- Configure Rust Analyzer
  --      server = {
  --        settings = {
  --          ["rust-analyzer"] = {
  --            checkOnSave = {
  --              enable = true,
  --              command = "clippy", -- Set Clippy as the default check command
  --            },
  --          },
  --        },
  --      },
  --    })
  --  end,
  --},
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<leader>tf]],
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        rust_analyzer = function()
          return true
        end,
      },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^4", -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      -- Your custom key mappings
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
      })
    end,
    keys = {
      { "<C-n>", mode = { "i", "s" } },
      { "<C-p>", mode = { "i", "s" } },
      { "<C-d>", mode = { "i", "s" } },
      { "<C-u>", mode = { "i", "s" } },
      { "<CR>", mode = { "i", "s" } },
      { "<C-Space>", mode = { "i", "s" } },
      { "<C-e>", mode = { "i", "s" } },
    },
  },
}
