{ config, pkgs, ... }: {
  # Set zsh as shell
  home.sessionVariables = {
    SHELL = "zsh";
  };

  # Start nix provided zsh from bash
  home.file.".bashrc".text = ''
    # Only interactive shells use zsh. Otherwise you cannot login via Ubuntu UI.
    [[ $- == *i* ]] && exec zsh
  '';

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    history = {
      size = 50000;
      save = 50000;
      share = true;
      ignoreDups = true;
    };

    shellAliases = {
      ll = "eza -la --icons --group-directories-first";
      cat = "bat";
    };

    initContent = ''
      chpwd() {
        eza -la --icons --group-directories-first
      }
    '';

    #initContent = ''
    #  export EDITOR=nvim
    #'';
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.bat.enable = true;
  programs.eza.enable = true;
  
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
    options = [ 
      "--cmd"
      "cd"
    ];
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
