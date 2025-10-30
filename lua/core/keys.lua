vim.keymap.set("i","kj","<Esc>");
vim.keymap.set("n","K","5k");
vim.keymap.set("n","J","5j");
vim.keymap.set("v","K","5k");
vim.keymap.set("v","J","5j");

vim.keymap.set("n","<A-j>","<C-w>j");
vim.keymap.set("n","<A-h>","<C-w>h");
vim.keymap.set("n","<A-k>","<C-w>k");
vim.keymap.set("n","<A-l>","<C-w>l");
vim.keymap.set("t","<A-j>","<C-\\><C-N><C-w>j");
vim.keymap.set("t","<A-h>","<C-\\><C-N><C-w>h");
vim.keymap.set("t","<A-k>","<C-\\><C-N><C-w>k");
vim.keymap.set("t","<A-l>","<C-\\><C-N><C-w>l");

vim.keymap.set("n","<Space>j","<C-w>5-");
vim.keymap.set("n","<Space>h","<C-w>15<");
vim.keymap.set("n","<Space>k","<C-w>5+");
vim.keymap.set("n","<Space>l","<C-w>15>");


vim.keymap.set("n","<Space>t",":tabnew ");
vim.keymap.set("n","<Space>c","gt");

vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  command = "nmap <buffer> f <CR>",
})

