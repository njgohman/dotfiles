local gofmt = function()
  vim.lsp.buf.format({
    async = false,
    bufnr = vim.api.nvim_get_current_buf(),
    name = 'gopls',
  })
  vim.cmd("write")
end

vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.go"},
  callback = gofmt
})
