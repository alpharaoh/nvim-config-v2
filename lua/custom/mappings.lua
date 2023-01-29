local M = {}

M.general = {
  i = {
    ["kj"] = { "<Esc>", "Escape insert mode" },
  },
  n = {
    ["<leader>lg"] = { "<cmd> :LazyGit <CR>", "Open LazyGit" },
    ["<C-d>"] = { "<C-d>zz", "Go down half a page" },
    ["<C-u>"] = { "<C-u>zz", "Go up half a page" },
    ["n"] = { "nzzzv", "Go to next and center" },
    ["N"] = { "Nzzzv", "Go to prev and center" },
  }
}

return M
