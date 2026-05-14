local bufferline = require("bufferline")

bufferline.setup({
    options = {
        mode = "buffers",
        numbers = "none",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        indicator = {
            icon = " ",
            style = "icon",
        },
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 25,
        max_name_length_prefix = 0,
        truncate_names = true,
        tab_size = 20,
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = false,
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        show_duplicate_prefix = true,
        persist_buffer_sort = true,
        separator_style = "padded_slant",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        themable = true,
        highlights = {
            fill = {
                bg = { attribute = "bg", highlight = "Normal" },
            },
            background = {
                bg = { attribute = "bg", highlight = "Normal" },
            },
            tab = {
                bg = { attribute = "bg", highlight = "Normal" },
            },
            tab_selected = {
                fg = { attribute = "fg", highlight = "Normal" },
                bg = { attribute = "bg", highlight = "Normal" },
            },
            buffer_selected = {
                fg = { attribute = "fg", highlight = "Normal" },
                bg = { attribute = "bg", highlight = "Normal" },
                bold = true,
            },
        },
    },
})

-- Shift + arrow keys to navigate buffers
vim.keymap.set("n", "<S-Right>", "<cmd>BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-Left>", "<cmd>BufferLineCyclePrev<CR>", { noremap = true, silent = true })
