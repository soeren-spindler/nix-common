{
  description = "My Home Manager modules";

  outputs = { self, ... }: {
    homeManagerModules = {
      zsh = import ./modules/zsh.nix;
      git = import ./modules/git.nix;
      neovim = import ./modules/neovim.nix;
    };
  };
}
