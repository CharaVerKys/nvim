-- gpt gen code, with a little research seems legit...
local gitsigns_path = vim.fn.stdpath("config") .. "/lua/plugins/gitsigns.nvim/lua"
package.path = package.path .. ";" .. gitsigns_path .. "/?.lua"
----------------

require("gitsigns").setup {
    current_line_blame = true
}

