local opts = {
 default_config = {
    cmd = { "/home/xcosng/.cargo/prosemd-lsp/bin/prosemd-lsp", "--stdio" },
    filetypes = { "markdown" },
    root_dir = function(fname)
      return lsp_util.find_git_ancestor(fname) or vim.fn.getcwd()
    end,
    settings = {
  },
  }

}
require('lspconfig.configs').prosemd=opts
