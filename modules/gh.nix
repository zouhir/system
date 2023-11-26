{ config, pkgs, ... }: {
  programs.gh = {
    enable = true;
    settings = {
      aliases = {
      };
      git_protocol = "ssh";
    };
  };
}
