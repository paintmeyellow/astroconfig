local util = require "lspconfig/util"

return {
  cmd = { "gopls", "serve" },
  filetypes = { "go", "go.mod" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      -- https://github.com/golang/tools/blob/master/gopls/doc/analyzers.md
      analyses = {
        unusedparams = true,
      },
      -- https://github.com/golang/tools/blob/master/gopls/doc/settings.md
      staticcheck = true,
    },
  },
}
