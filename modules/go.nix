{ pkgs, ... }: {
  programs.go = {
    enable = true;
    package = pkgs.go_1_22;
    goPrivate = [
      "github.com/yoyo-codes"
    ]
  };
}
