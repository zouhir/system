{ pkgs, ... }: {
  services = { nix-daemon = { enable = true; }; };
  nix.package = pkgs.nix;
  nix.settings.trusted-users = [ "root" "zouhir" ];

  system = {
    defaults = {
      dock = {
        autohide = true;
        mineffect = "scale";
        enable-spring-load-actions-on-all-items = true;
        minimize-to-application = true;
        show-process-indicators = true;
        mouse-over-hilite-stack = true;
        tilesize = 32;
      };
      finder = {
        AppleShowAllExtensions = true;
        ShowStatusBar = true;
        ShowPathbar = true;
        _FXShowPosixPathInTitle = true;
        FXDefaultSearchScope = "SCcf";
        FXEnableExtensionChangeWarning = false;
      };
      NSGlobalDomain = {
        "com.apple.springing.enabled" = true;
        "com.apple.springing.delay" = 0.0;
      };
    };
  };

  programs = {
    bash = {
      enable: true;
      enableCompletion: true;
    };
  };

  environment.shells = with pkgs; [ bashInteractive zsh ];

  users.users.zouhir = {
    shell = pkgs.bashInteractive;
  };
}
