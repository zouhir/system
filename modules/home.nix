{ pkgs, ... }: {
  home.username = "zouhir";
  home.homeDirectory = (if pkgs.stdenv.isDarwin then "/Users/" else "/home/")
    + "zouhir";
  home.stateVersion = "23.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.sessionVariables = {
    LC_ALL = "en_US.UTF-8";
    LC_CTYPE = "en_US.UTF-8";
  };
}
