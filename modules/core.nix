{ config, pkgs, ... }: {
  home.packages = [
    pkgs.tmux
    pkgs.nerd-fonts.jetbrains-mono
  ];

  programs.home-manager = {
    enable = true;
  };
}
