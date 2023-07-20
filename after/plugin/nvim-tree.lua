vim.keymap.set('n', '<leader>z', vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>e', vim.cmd.NvimTreeFocus)

require('nvim-tree').setup({
    sort_by = "case_sensitive",
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})
