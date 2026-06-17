{ config, pkgs, ... }: {
  programs.git = {
    enable = true;

    settings = {
      init.defaultBranch = "main";
      push.autoSetupRemote = true;

      alias = {
        st = "status";
        df = "diff";
        lg = "log --graph --abbrev-commit --decorate --all";
      };
    };

    ignores = [
      ".direnv/"
    ];
  };
}
