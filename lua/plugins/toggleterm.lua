return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      on_open = function(term)
        vim.api.nvim_feedkeys("source ~/.bash_profile", "t", true)
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<CR>", true, true, true), "n", true)
      end,
    })
  end,
}
