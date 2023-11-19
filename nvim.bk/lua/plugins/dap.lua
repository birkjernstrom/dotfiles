return {
  {
    "mfussenegger/nvim-dap",
    lazy = true,
    config = function()
      require("dap.ext.vscode").load_launchjs()
    end,
  },
  {
    "ldelossa/nvim-dap-projects",
    config = function()
      require("nvim-dap-projects").search_project_config()
    end,
  },
}
