return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 2000,
    opt = function()
      return {
        colorscheme = "kanagawa",
        transparent = true,
      }
    end,
  },
  { "ellisonleao/gruvbox.nvim" },
  {
    "navarasu/onedark.nvim",
    lazy = true,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "jacoborus/tender.vim",
    lazy = true,
    opt = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tender",
    },
  },
}
