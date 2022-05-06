local status,null_ls = pcall(require,"null-ls")
if not status then
  vim.notify("null-ls not found!")
  return 
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
  debug =false,
  sources = {
    formatting.clang_format,
  },
  on_attach=function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
  end,
})
