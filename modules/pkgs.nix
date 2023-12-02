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
      git-lfs
      wget
      nodejs_20
      hugo
      tmux
      neovim
    ] ++ (lib.optionals pkgs.stdenv.isDarwin [
      terminal-notifier
      coreutils
    ]);
}
