{ lib, ... }: {
  programs.bash = {
    enable = true;
    enableCompletion = true;
    shellOptions = [
      # Autocorrect typos in path names when using `cd`
      "cdspell"

      # For correcting minor spelling errors in directory names
      "dirspell"

      # Append to history file rather than replacing it.
      "histappend"

      # check the window size after each command and, if
      # necessary, update the values of LINES and COLUMNS.
      "checkwinsize"

      # Case-insensitive globbing (used in pathname expansion)
      "nocaseglob"

      # Warn if closing shell with running jobs.
      "checkjobs"
    ];

    shellAliases = (import ./aliases/common.nix); 

    initExtra = builtins.readFile ./prompt.bash;
  };
}
