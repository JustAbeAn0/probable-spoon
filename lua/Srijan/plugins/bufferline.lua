return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "tabs",
      close_command = function(bufnr)
        -- Check if this is the last tab
        local tabpages = vim.api.nvim_list_tabpages()
        if #tabpages > 1 then
          vim.api.nvim_command('tabclose')
        else
          -- You can optionally create a new tab to avoid closing the last tab
          vim.api.nvim_command('tabnew')
          vim.api.nvim_command('tabclose')
        end
      end,
    },
  },
}
