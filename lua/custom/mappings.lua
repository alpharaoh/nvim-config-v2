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
    ["<C-h>"] = { "<C-w> h", "move left" },
    ["<C-l>"] = { "<C-w> l", "move right" },
    ["<C-j>"] = { "<C-w> j", "move down" },
    ["<C-k>"] = { "<C-w> k", "move up" },
  }
}

M.nvimtree = {
  plugin = true,

  n = {
    -- toggle
    ["<leader>n"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },

    -- focus
    ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
  },
}

return M
