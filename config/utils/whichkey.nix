{
  plugins.which-key = {
    enable = true;
    settings = {
      icons = {
        breadcrumb = "»";
        group = "+";
        separator = ""; # ➜
      };
      spec = [
        {
          __unkeyed-1 = "<leader>w";
          mode = "n";
          group = "+windows";
        }
        {
          __unkeyed-1 = "<leader>b";
          mode = "n";
          group = "+buffer";
        }
      ];
    };
  };
}
