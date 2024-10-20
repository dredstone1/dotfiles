return {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
        require 'treesitter-context'.setup {
            enable = true,
            max_lines = 0,
            min_window_height = 0,
            line_numbers = true,
            multiline_threshold = 20,
            trim_scope = 'outer',
            mode = 'cursor',
            separator = nil,
            zindex = 20,
            on_attach = nil,
        }
        vim.keymap.set("n", "[l", function()
            require("treesitter-context").go_to_context(vim.v.count1)
        end, { silent = true })
    end
}
