{ lib, ... }:
let
  bashExtra = [ ./options.bash ./prompt.bash ];
  bashExtraContents = map builtins.readFile bashExtra;
in {
  programs.bash = {
    enable = true;
    enableCompletion = true;
    initExtra = lib.concatStringsSep "\n" bashExtraContents;
  };
}
