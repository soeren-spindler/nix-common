{ gitName, gitEmail, ... }:

{
  programs.git = {
    enable = true;
    settings.user.name = gitName;
    settings.user.email = gitEmail;
  
    settings.init.defaultBranch = "main";
  };
}
