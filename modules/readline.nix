{ ... }: {
  programs.readline = {
  	enable = true;

  	#https://github.com/mathiasbynens/dotfiles/blob/main/.inputrc
    bindings = {
			# Use the text that has already been typed as the prefix for searching through
			# commands (i.e. more intelligent Up/Down behavior)
			"\\e[B" = "history-search-forward";
			"\\e[A" = "history-search-backward";
			"\\t" = "menu-complete";
			"\\e[Z" = "menu-complete-backward";
    };

		#https://github.com/mathiasbynens/dotfiles/blob/main/.inputrc
    variables = {
    	# Make Tab autocomplete regardless of filename case
    	completion-ignore-case = true;

			# List all matches in case multiple possible completions are possible
			show-all-if-ambiguous = true;

			# Immediately add a trailing slash when autocompleting symlinks to directories
			mark-symlinked-directories = true;

			# Do not autocomplete hidden files unless the pattern explicitly begins with a dot
			match-hidden-files = false;

			# Show all autocomplete results at once
			page-completions = false;

			# If there are more than 200 possible completions for a word, ask to show them all
			completion-query-items = 200;

			# Show extra file information when completing, like `ls -F` does
			visible-stats = true;

			# Be more intelligent when autocompleting by also looking at the text after
      # the cursor. For example, when the current line is "cd ~/src/mozil", and
      # the cursor is on the "z", pressing Tab will not autocomplete it to "cd
      # ~/src/mozillail", but to "cd ~/src/mozilla". (This is supported by the
      # Readline used by Bash 4.)
      skip-completed-text = true;

      # Allow UTF-8 input and output, instead of showing stuff like $'\0123\0456'
      input-meta = true;
      output-meta = true;
      convert-meta = false;
    };
  };
}
