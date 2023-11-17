local prefix = "<leader>r"

return {
  {
    "rest-nvim/rest.nvim",
    -- https://github.com/rest-nvim/rest.nvim/issues/246
    commit = "8b62563",
    ft = { "http" },
    cmd = {
      "RestNvim",
      "RestNvimPreview",
    },
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { prefix, desc = "RestNvim" },
      { prefix .. "r", "<Plug>RestNvim", desc = "Run request" },
      { prefix .. "p", "<Plug>RestNvimPreview", desc = "Show preview" },
    },
    opts = {
      -- Open request results in a horizontal split
      result_split_horizontal = false,
      -- Keep the http file buffer above|left when split horizontal|vertical
      result_split_in_place = false,
      -- Skip SSL verification, useful for unknown certificates
      skip_ssl_verification = false,
      -- Encode URL before making request
      encode_url = true,
      -- Highlight request on run
      highlight = {
        enabled = true,
        timeout = 150,
      },
      result = {
        -- toggle showing URL, HTTP info, headers at top the of result window
        show_url = true,
        -- show the generated curl command in case you want to launch
        -- the same request via the terminal (can be verbose)
        show_curl_command = false,
        show_http_info = true,
        show_headers = true,
        -- executables or functions for formatting response body [optional]
        -- set them to false if you want to disable them
        formatters = {
          json = "jq",
        },
      },
    },
  }
}
