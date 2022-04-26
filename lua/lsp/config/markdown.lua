local opts = {
  flags = {
    debounce_text_changes = 150,
  },
  on_attach = function(client, bufnr)
    local function buf_set_keymap(...)
      vim.api.nvim_buf_set_keymap(bufnr, ...)
    end

    require("keybindings").map_lsp(buf_set_keymap)
    -- 保存时自动格式化
    vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
  end,
}
require('lspconfig').prosemd_lsp.setup(opts);


local lsp_configs = require('lspconfig.configs')

lsp_configs.prosemd = {
  default_config = {
    -- Update the path to prosemd-lsp
    cmd = { "/home/xcsong/.cargo/bin/prosemd-lsp", "--stdio" },
    filetypes = { "markdown" },
    root_dir = function(fname)
      return lsp_util.find_git_ancestor(fname) or vim.fn.getcwd()
    end,
    settings = {},
  }
}
