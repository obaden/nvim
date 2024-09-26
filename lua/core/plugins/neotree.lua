return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
        -- Setup Neo-tree
        require("neo-tree").setup({
        -- other configurations
        })

        -- Define keymaps
        vim.keymap.set('n', '<leader>e', ":Neotree toggle<CR>", { silent = true, noremap = true, desc = "Toggle Neo-tree" })
    end
}
