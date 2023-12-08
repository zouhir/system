SHELL := /bin/bash

HOSTNAME := $(shell hostname)

home:
	home-manager switch --flake ./personal#zouhir@$(HOSTNAME) \
 	--extra-experimental-features nix-command \
	--extra-experimental-features flakes

darwin:
	nix run nix-darwin \
	--extra-experimental-features nix-command \
	--extra-experimental-features flakes \
	-- switch --flake ./personal

#darwin-enable:
#	./result/sw/bin/darwin-rebuild switch --flake .

shell-reset:
	sudo chsh -s /run/current-system/sw/bin/bash
