{ pkgs, ... }:

{
  plugins = {
    treesitter = {
      enable = true;
      # nixGrammars = true;
      settings = {
        highlight = {
          enable = true;
        };
        indent = {
          enable = true;
        };
      };
      # folding = true;

      nixvimInjections = true;
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
    };
  };
}
