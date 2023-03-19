return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },
  {
    "ray-x/go.nvim",
    -- lazy-load on filetype
    ft = "go",
    dependencies = {
      "ray-x/guihua.lua",
    },
    config = function()
      require("go").setup()
    end,
  },
  {
    "ray-x/guihua.lua",
  },
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
