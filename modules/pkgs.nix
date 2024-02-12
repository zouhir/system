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
      docker
      ffmpeg_6-full
      git-lfs
      hugo
      neovim
      nodejs_20
      tmux
      wget
    ] ++ (lib.optionals pkgs.stdenv.isDarwin [
      terminal-notifier
      coreutils
    ]);
}
