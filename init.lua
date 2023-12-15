if vim.g.vscode then
	vim.opt.clipboard = 'unnamedplus'
	require("vscode.keybinds")
end

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true