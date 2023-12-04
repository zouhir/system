SHELL := /bin/bash

HOSTNAME := $(shell hostname)

darwin: darwin-build darwin-enable

home:
	home-manager switch --flake .#zouhir@$(HOSTNAME) \
 	--extra-experimental-features nix-command \
	--extra-experimental-features flakes

darwin-build:
	nix run nix-darwin \
	--extra-experimental-features nix-command \
	--extra-experimental-features flakes \
	-- switch --flake .

darwin-enable:
	./result/sw/bin/darwin-rebuild switch --flake .

shell-reset:
	sudo chsh -s /run/current-system/sw/bin/bash
