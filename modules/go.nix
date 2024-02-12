{ pkgs, ... }: {
  programs.go = {
    enable = true;
    package = pkgs.go;
    goPrivate = [
      "github.com/yoyo-codes"
    ];
  };
}
