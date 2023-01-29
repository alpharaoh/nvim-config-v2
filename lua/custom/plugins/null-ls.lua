local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

null_ls.setup {
  debug = true,
  sources = {
    code_actions.eslint_d,
    formatting.prettierd,
    diagnostics.flake8.with({ extra_args = { "--max-line-length=240" } }),
    formatting.black.with({ extra_args = { "--fast" } }),
  },
  -- format on save
  on_attach = function()
    vim.api.nvim_create_autocmd("BufWritePost", {
      callback = function()
        vim.lsp.buf.format { async = false }
      end,
    })
  end,
}
