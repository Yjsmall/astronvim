return {
  "Mythos-404/xmake.nvim",
  lazy = true,
  event = "BufReadPost xmake.lua",
  config = true,
  dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  opt = {
    files_path = vim.fn.stdpath "cache" .. "/xmake_", -- project data saved by plugin

    compile_command = { -- compile_command file generation configuration
      lsp = "clangd", -- generate compile_commands file for which lsp to read
      dir = "build", -- location of the generated file
    },

    menu = { -- interface configuration
      size = { width = 25, height = 20 }, -- interface size
      bottom_text_format = "%s(%s)", -- interface formatting string Generated by default: `"xmake_test(debug)"`
      border_style = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }, -- interface border see nui.nvim documentation for more detail
    },

    debug = false, -- Enable to provide more detailed error output.

    work_dir = vim.fn.getcwd(), -- Get the work directory.
  },
}