return {
  -- NOTE: All time fav theme daily driver!
  "sainnhe/everforest",
  -- :h everforest.txt and behold her beauty! 🤩
  lazy = false,
  priority = 1000,
  config = function()
    -- tell vim LOAD PLZ ALL TIME FAV DAILY DRIVER 4 LYFE RIGHT MEOW
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.g.everforest_enable_italic = true
    vim.cmd.colorscheme('everforest')
  end,
}
