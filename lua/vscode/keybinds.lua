if vim.g.vscode then
    local vscode = require("vscode-neovim") 
    local vskeymap = function(modes, lhs, cmd)
        vim.keymap.set(modes, lhs, function () vscode.action(cmd) end)
    end
    vim.g.mapleader = " "

    -- vim.keymap.set("n", "<leader>n", ":noh<CR>")

    -- Keymap for general use
    vskeymap({'n', 'x'}, '<leader>e', 'workbench.files.action.focusFilesExplorer')
    vskeymap({'n', 'x'}, '<leader>f', 'workbench.action.quickOpen')
    vskeymap({'n', 'x'}, '<leader><leader>', 'workbench.action.showCommands')
    vskeymap({'n', 'x'}, ';', 'workbench.action.showEditorsInActiveGroup')
    vskeymap({'n', 'x'}, '<leader>t', 'terminal.focus')
    -- Open folder
    vskeymap({'n', 'x'}, '<leader>o', 'workbench.action.files.openFolder')
    -- Error navigation
    vskeymap({'n', 'x'}, "]d", "editor.action.marker.next")
    vskeymap({'n', 'x'}, "[d", "editor.action.marker.prev")
    vskeymap('n', '<leader>ca', "editor.action.quickFix")
    vskeymap('n', '<leader>cl', "codelens.showLensesInCurrentLine")
    vskeymap('n', '<leader>ra', "editor.action.rename")
    vskeymap({'n', 'x'}, '<leader>rr', "rest-client.request")

    -- fold support
    vskeymap('n', 'zM', 'editor.foldAll')
    vskeymap('n', 'zR', 'editor.unfoldAll')
    vskeymap('n', 'zc', 'editor.fold')
    vskeymap('n', 'zC', 'editor.foldRecursively')
    vskeymap('n', 'zo', 'editor.unfold')
    vskeymap('n', 'zO', 'editor.unfoldRecursively')
    vskeymap('n', 'za', 'editor.toggleFold')
    vskeymap({'n'}, 'j', 'cursorDown')
    vskeymap({'n'}, 'k', 'cursorUp')
	--- To prevent from using the arrow keys when learning vim
	vim.keymap.set({'n', 'x'}, '<down>', '')   
	vim.keymap.set({'n', 'x'}, '<up>', '')   
	vim.keymap.set({'n', 'x'}, '<right>', '')   
	vim.keymap.set({'n', 'x'}, '<left>', '')   
end