return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      fzf = {
        fuzzy = true, -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true, -- override the file sorter
        case_mode = "smart_case", -- or "ignore_case" or "respect_case"
        -- the default case_mode is "smart_case"
      },
      defaults = {
        mappings = {
          i = {
            -- Josean Martinez
            -- https://www.youtube.com/watch?v=NL8D8EkphUw&t=17s
            -- Modified to M instead of C to support tmux+vim navigation
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })
    telescope.load_extension("fzf")

    vim.keymap.set("n", "<leader><space>", require("telescope.builtin").find_files, { desc = "Find Files" })
    vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "Find Buffers" })
    vim.keymap.set("n", "<leader>/", function()
      -- You can pass additional configuration to telescope to change theme, layout, etc.
      require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
        winblend = 10,
        previewer = false,
      }))
    end, { desc = "Fuzzily search in current buffer" })
    vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, { desc = "Find Help" })
    vim.keymap.set("n", "<leader>fk", require("telescope.builtin").keymaps, { desc = "Find keymaps" })
    vim.keymap.set("n", "<leader>fw", require("telescope.builtin").grep_string, { desc = "Find current Word" })
    vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "Find by Grep" })
    vim.keymap.set("n", "<leader>fd", require("telescope.builtin").diagnostics, { desc = "Find Diagnostics" })

    vim.keymap.set("n", "<leader>gf", require("telescope.builtin").git_files, { desc = "Search Git Files" })
  end,
}
