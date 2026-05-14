{ ... }:

{
  # Set zsh as shell
  home.sessionVariables = {
    SHELL = "zsh";
  };

  # Start nix provided zsh from bash
  home.file.".bashrc".text = ''
    exec zsh
  '';

  programs.zsh = {
    enable = true;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "eza -l --icons";
      cat = "bat";
    };

    initContent = ''
      chpwd() {
        eza -l --icons --group-directories-first
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
