--- To prevent from using the arrow keys when learning vim
if vim.g.vscode then
	vim.opt.clipboard = 'unnamedplus'
	vim.keymap.set({'n', 'x'}, '<down>', '')   
	vim.keymap.set({'n', 'x'}, '<up>', '')   
	vim.keymap.set({'n', 'x'}, '<right>', '')   
	vim.keymap.set({'n', 'x'}, '<left>', '')   
end
