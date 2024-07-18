local M = {}

M.treesitter = {
  ensure_installed = {
    "gleam",
    "vim",
    "lua",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "html",
    "markdown",
    "markdown_inline",
    "elixir",
    "heex",
    "eex",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",
    "gleam",

    -- web dev stuff
    "css-lsp",
    "typescript-language-server",
    "vscode-html-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = false,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
    show_on_dirs = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
