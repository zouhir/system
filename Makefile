SHELL := /bin/bash

HOSTNAME := $(shell hostname)

personal-home:
	home-manager switch --flake ./personal#zouhir@$(HOSTNAME) \
 	--extra-experimental-features nix-command \
	--extra-experimental-features flakes

personal-darwin:
	nix run nix-darwin \
	--extra-experimental-features nix-command \
	--extra-experimental-features flakes \
	-- switch --flake ./personal
shell-reset:
	sudo chsh -s /run/current-system/sw/bin/bash