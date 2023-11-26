{ pkgs, ... }: {
  services = { nix-daemon = { enable = true; }; };
  nix.package = pkgs.nix;
  nix.settings.trusted-users = [ "root" "zouhir" ];

  homebrew = {
    enable = true;
    casks = [
      "google-chrome"
    ];
  };

  system = {
    defaults = {
      dock = {
        autohide = true;
      };
      NSGlobalDomain = {
      };
      finder = {
      };
      CustomUserPreferences = {
        "com.apple.NetworkBrowser" = { "BrowseAllInterfaces" = true; };
        "com.apple.screensaver" = {
          "askForPassword" = true;
          "askForPasswordDelay" = 0;
        };
        "com.apple.trackpad" = {  };
        "com.apple.mouse" = {  };
        "com.apple.desktopservices" = {  };
        "com.apple.LaunchServices" = {  };
        "com.apple.finder" = {
        };
        "NSGlobalDomain" = {
        };
        "com.apple.ImageCapture" = { "disableHotPlug" = true; };
      };
    };
  };
	environment.shells = with pkgs; [ bashInteractive zsh ];
  users.users.zouhir = {
		shell = pkgs.bashInteractive;
  };
}
