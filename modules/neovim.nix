{ pkgs, ... }:

{
  xdg.configFile."nvim".source = ./nvim;

  programs.neovim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;

    withPython3 = false;
    withRuby = false;

    extraPackages = with pkgs; [
      tree-sitter
      gcc
      ripgrep
      fd
      fzf
      xclip

      lua5_1
      luarocks

      # LSP basics
      nil
      lua-language-server
    ];
  };
}
