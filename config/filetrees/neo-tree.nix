{
  plugins.neo-tree = {
    enable = true;
    enableDiagnostics = true;
    enableGitStatus = true;
    enableModifiedMarkers = true;
    enableRefreshOnWrite = true;
    closeIfLastWindow = true;
    # popupBorderStyle = "shadow"; # Type: null or one of “NC”, “double”, “none”, “rounded”, “shadow”, “single”, “solid” or raw lua code
    # buffers = {
    #   bindToCwd = false;
    #   followCurrentFile = {
    #     enabled = true;
    #   };
    # };
    window = {
      width = 30;
      #   height = 15;
      autoExpandWidth = false;
      mappings = {
        "<space>" = "none";
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = ":Neotree toggle<cr>";
      options = {
        silent = true;
        desc = "Explorer NeoTree (cwd)";
      };
    }
  ];
  #   {
  #     mode = "n";
  #     key = "<leader>be";
  #     action = ":Neotree buffers<CR>";
  #     options = {
  #       silent = true;
  #       desc = "Buffer explorer";
  #     };
  #   }
  #   {
  #     mode = "n";
  #     key = "<leader>ge";
  #     action = ":Neotree git_status<CR>";
  #     options = {
  #       silent = true;
  #       desc = "Git explorer";
  #     };
  #   }
  # ];
}
