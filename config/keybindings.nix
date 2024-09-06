{
  globals.mapleader = " ";

  keymaps = [
    {
      mode = "n";
      key = "<leader>wh";
      action = "<C-w>h";
      options = {
        desc = "Move to the left window";
      };
    }
    {
      mode = "n";
      key = "<leader>wj";
      action = "<C-w>j";
      options = {
        desc = "Move to the bottom window";
      };
    }
    {
      mode = "n";
      key = "<leader>wk";
      action = "<C-w>k";
      options = {
        desc = "Move to the top window";
      };
    }
    {
      mode = "n";
      key = "<leader>wl";
      action = "<C-w>l";
      options = {
        desc = "Move to the right window";
      };
    }
    {
      mode = "n";
      key = "<leader>w<Down>";
      action = "<C-w>s";
      options = {
        desc = "Split window horizontally (below)";
      };
    }
    {
      mode = "n";
      key = "<leader>w<Right>";
      action = "<C-w>v";
      options = {
        desc = "Split window vertically (right)";
      };
    }
    {
      mode = "n";
      key = "<leader>wd";
      action = "<C-w>c";
      options = {
        desc = "Close window";
      };
    }
  ];
}
