-- disable banner for default file explorer
vim.cmd("let g:netrw_banner = 0"); 

vim.opt.number = true;
vim.opt.relativenumber = true;

vim.opt.tabstop = 4;
vim.opt.softtabstop = 4;
vim.opt.shiftwidth = 4;
vim.opt.expandtab = true;
vim.opt.autoindent = true; -- maybe
vim.opt.smartindent = true;-- maybe

-- dont wrap to next line = correct visual line count
vim.opt.wrap = false;

-- vim.opt.swapfile = false; -- enabled by default
-- vim.opt.backup = false; -- idk
vim.opt.undofile = true;

vim.opt.incsearch = true; -- highlight first match when search
vim.opt.ignorecase = true; -- during search, match like vscode vim
vim.opt.smartcase = true; -- upper case search for upper only, for actual like vscode extension

vim.opt.inccommand = "split"; -- for commands like :s :d => see changed while type

-- vim.opt.termguicolor = true;
-- vim.opt.background = "dark";

vim.opt.scrolloff = 5;

vim.opt.signcolumn = "yes";

vim.opt.backspace = {"start", "eol", "indent"};

vim.opt.splitright = true;
vim.opt.splitbelow = true;

vim.opt.hlsearch = true;

vim.opt.spell = true;
vim.opt.spelllang = {'en_us','ru_ru'}; -- работает {чекнул}

-- vim.opt.colorscheme="desert"; -- not works
vim.cmd("colorscheme desert");
