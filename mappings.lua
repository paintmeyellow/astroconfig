-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    ["<leader>tt"] = { ":GoTestFile -F<cr>", desc = "Go Test File"},
    ["<leader>tf"] = { ":GoTestFunc -F<cr>", desc = "Go Test Func"},
    ["<leader>tc"] = { ":GoCoverage<cr>", desc = "Go Coverage"},
    L = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    H = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    ["<leader>T"] = { ":ChatGPT<cr>", desc = "ChatGPT"},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
