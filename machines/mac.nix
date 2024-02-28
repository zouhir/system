{ pkgs, ... }: {
  services = { nix-daemon = { enable = true; }; };
  nix = {
    package = pkgs.nixFlakes;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
    settings = {
      trusted-users = [ "root" "zouhir" ];
    };
  };

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
        _HIHideMenuBar = false;
        "com.apple.springing.delay" = 0.0;
        "com.apple.springing.enabled" = true;
        ApplePressAndHoldEnabled = false;
        AppleShowScrollBars = "Always";
        InitialKeyRepeat = 15;
        KeyRepeat = 2;
        NSAutomaticCapitalizationEnabled = false;
        NSAutomaticDashSubstitutionEnabled = false;
        NSAutomaticPeriodSubstitutionEnabled = false;
        NSAutomaticQuoteSubstitutionEnabled = false;
        NSAutomaticSpellingCorrectionEnabled = false;
        NSDocumentSaveNewDocumentsToCloud = false;
        NSWindowResizeTime = 0.1;
      };
    };
  };

  programs = {
    bash = {
      enable = true;
      enableCompletion = true;
    };
  };

  environment.shells = with pkgs; [ bashInteractive zsh ];

  users.users.zouhir = {
    shell = pkgs.bashInteractive;
  };
}
