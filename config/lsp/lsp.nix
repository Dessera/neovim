{
  plugins = {
    lsp-format.enable = false;

    lsp = {
      enable = true;

      servers = {
        nil-ls = {
          enable = true;
        };
        pylsp = {
          enable = true;
        };
      };
    };
  };
}
