return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({ -- Changed from config.setup to configs.setup
      highlight = {
        enable = true
      },
      indent = { enable = true },
      autotag = { enable = true },
      ensure_installed = {
        "lua",
        "typescript",
        "java",
        "python",
        "c",
        "cpp",
        "markdown",
        "markdown_inline",
        "javascript",
        "tsx",
        "go",
        "php",
      },
      auto_install = false,
    })
  end
}
