{ config, pkgs, ... }: {
  home.packages = [
    pkgs.nerd-fonts.jetbrains-mono
  ];

  programs.home-manager = {
    enable = true;
  };

  programs.tmux = {
    enable = true;
    shell = "${pkgs.zsh}/bin/zsh";
  };
}
