vim.keymap.set("i","kj","<Esc>");
vim.keymap.set("n","K","5k");
vim.keymap.set("n","J","5j");
vim.keymap.set("v","K","5k");
vim.keymap.set("v","J","5j");

vim.keymap.set("n","<Space>j","<C-w>j");
vim.keymap.set("n","<Space>h","<C-w>h");
vim.keymap.set("n","<Space>k","<C-w>k");
vim.keymap.set("n","<Space>l","<C-w>l");
vim.keymap.set("n","<Space>J","<C-w>5-");
vim.keymap.set("n","<Space>H","<C-w>15<");
vim.keymap.set("n","<Space>K","<C-w>5+");
vim.keymap.set("n","<Space>L","<C-w>15>");


vim.keymap.set("n","<Space>t",":tabnew ");
vim.keymap.set("n","<Space>c","gt");

vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  command = "nmap <buffer> f <CR>",
})

