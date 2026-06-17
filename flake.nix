{
  description = "Shared agnostic Home Manager modules";

  outputs = { self, ... }: {
    homeManagerModules = {
      core = ./modules/core.nix;
      shell = ./modules/shell.nix;
      git = ./modules/git.nix;
      neovim = ./modules/neovim.nix;
    };
  };
}
