local api = vim.api

-- go to lase loc when opening a buffer
api.nvim_create_autocmd(
  "BufReadPost",
   {command = [[if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]] }
)


