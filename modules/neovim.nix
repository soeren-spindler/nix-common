{ config, pkgs, ... }: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;

    withPython3 = false;
    withRuby = false;

    extraPackages = with pkgs; [
      gcc
      tree-sitter
      ripgrep
      fd
      fzf
      xclip
      lazygit

      lua5_1
      luarocks

      # LSP basics
      nil
      lua-language-server
    ];
  };

  xdg.configFile."nvim".source = ./neovim-config;
}
