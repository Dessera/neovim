{ ... }:

{
  imports = [
    ./settings.nix
    ./keybindings.nix

    ./statusline
    ./filetrees
    ./bufferline

    ./ui
    ./colorschemes
    ./treesitter

    ./completions
    ./lsp

    ./utils
  ];
}
