{ pkgs, lib, ... }: {
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };
  home.packages = with pkgs;
    with pkgs.nodePackages_latest;
    [
      bash-completion
      curl
      ffmpeg_6-full
      firebase-tools
      git-lfs
      hugo
      neovim
      nodejs_20
      nodePackages.prettier
      tmux
      wget
    ] ++ (lib.optionals pkgs.stdenv.isDarwin [
      terminal-notifier
      coreutils
    ]);
}
