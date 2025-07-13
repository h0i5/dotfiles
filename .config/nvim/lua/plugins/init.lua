return {
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "prettier" } },
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "ThePrimeagen/vim-be-good",
    lazy = false,
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
  -- These are some examples, uncomment them if you want to see them work!
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  -- {
  --   "dundalek/lazy-lsp.nvim",
  --   lazy = false,
  --   dependencies = { "neovim/nvim-lspconfig" },
  --   config = function()
  --     require("lazy-lsp").setup {
  --       excluded_servers = {
  --         "ccls", -- prefer clangd
  --         "denols", -- prefer eslint and tsserver
  --         "docker_compose_language_service", -- yamlls should be enough?
  --         "flow", -- prefer eslint and tsserver
  --         "ltex", -- grammar tool using too much CPU
  --         "quick_lint_js", -- prefer eslint and tsserver
  --         "rnix", -- archived on Jan 25, 2024
  --         "scry", -- archived on Jun 1, 2023
  --         -- "tailwindcss", -- associates with too many filetypes
  --         -- Added tailwind for react
  --       },
  --     }
  --   end,
  -- },

  -- {
  --   "dundalek/lazy-lsp.nvim",
  --   lazy = false,
  --   dependencies = {
  --     "neovim/nvim-lspconfig",
  --     { "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
  --     "hrsh7th/cmp-nvim-lsp",
  --     "hrsh7th/nvim-cmp",
  --   },
  --   config = function()
  --     local lsp_zero = require "lsp-zero"
  --
  --     lsp_zero.on_attach(function(client, bufnr)
  --       -- see :help lsp-zero-keybindings to learn the available actions
  --       lsp_zero.default_keymaps {
  --         buffer = bufnr,
  --         preserve_mappings = false,
  --       }
  --     end)
  --
  --     require("lazy-lsp").setup {}
  --   end,
  -- },
  -- {
  --   "pmizio/typescript-tools.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  --   opts = {},
  -- },
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require("nvchad.configs.lspconfig").defaults()
  --     require "configs.lspconfig"
  --   end,
  -- },
  --
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        -- "typescript-language-server",
        "tailwindcss-language-server",
        "vtsls",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
