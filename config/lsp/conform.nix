{
  plugins.conform-nvim = {
    enable = true;
    # notifyOnError = true;

    # nix = ["alejandra"];
    settings = {
      formatters_by_ft = {
        nix = ["alejandra"];
      };

      log_level = "warn";
      notify_on_error = true;
      notify_no_formatters = false;

      format_on_save = {
        timeout_ms = 500;
        lsp_format = "fallback";
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>cf";
      action = "<cmd>lua require('conform').format()<cr>";
      options = {
        silent = true;
        desc = "Format Buffer";
      };
    }
  ];
}
