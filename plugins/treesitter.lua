return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    opts = {
    ensure_installed = {
        "go",
        "lua",
        "json",
        "yaml",
      },
      textobjects = {
        enable = true,
        lsp_interop = {
          enable = true,
          border = "single",
          peek_definition_code = {
            ["<leader>df"] = "@function.outer",
          },
        },
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
        },
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["]m"] = "@function.outer",
            ["]]"] = "@class.outer",
          },
          goto_previous_start = {
            ["[m"] = "@function.outer",
            ["[["] = "@class.outer",
          },
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    event = "BufRead",
  },
}
