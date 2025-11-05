-- gpt gen code, with a little research seems legit...
local gitsigns_path = vim.fn.stdpath("config") .. "/lua/plugins/gitsigns.nvim/lua"
package.path = package.path .. ";" .. gitsigns_path .. "/?.lua"
-- just test chunks
----------------
-- just test chunks

require("gitsigns").setup {
    current_line_blame = true,
    on_attach = function(bufnr)
        local gits = package.loaded.gitsigns
        local opts = {buffer = bufnr, noremap = true}
        vim.keymap.set('n', '<Space>c', function() gits.next_hunk() end, opts);
        vim.keymap.set('n', '<Space>C', function() gits.prev_hunk() end, opts);
        vim.keymap.set('n', '<Space>s', gits.stage_hunk, opts);
        vim.keymap.set('n', '<Space>d', gits.undo_stage_hunk, opts);
    end
}

