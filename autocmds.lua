local aug = vim.api.nvim_create_augroup
local au = vim.api.nvim_create_autocmd
local create_command = vim.api.nvim_create_user_command

aug("WinResize", { clear = true })
au("VimResized", {
  group = "WinResize",
  pattern = "*",
  command = "wincmd =",
  desc = "Automatically resize windows when the host window size changes.",
})

aug("go", { clear = true })
au("BufWritePre", {
  group = "go",
  pattern = "*.go",
  callback = function()
    require("go.format").goimport()
  end,
  desc = "Run gofmt + goimport on save",
})

create_command("A", ":GoAlt", { desc = "GoAlt" })
create_command("AV", ":GoAltV", { desc = "GoAltV" })
