{ ... }: {
  programs.git = {
    enable = true;
    userName = "Zouhir Chahoud";
    userEmail = "zouhir@users.noreply.github.com";
    extraConfig = {
      lfs = { enable = true; };
      pull = { ff = "only"; };
      init = { defaultBranch = "main"; };
    };
    ignores = [
      ".DS_Store"
      ".idea"
      ".project"
      ".settings"
      ".vscode/"
      "*.log"
      ".env"
    ];
  };
}
