local gofmt = function()
  vim.lsp.buf.format({
    async = true,
    bufnr = vim.api.nvim_get_current_buf(),
    name = 'gopls',
  })
end

vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.go"},
  callback = gofmt
})
