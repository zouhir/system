SHELL := /bin/bash

HOSTNAME := $(shell hostname)

darwin: darwin-build darwin-enable

home:
	home-manager switch --flake .#zouhir@$(HOSTNAME) \
 	--extra-experimental-features nix-command \
	--extra-experimental-features flakes

darwin-build:
	nix build "./#darwinConfigurations.$(HOSTNAME).system" \
	--extra-experimental-features nix-command \
	--extra-experimental-features flakes

darwin-enable:
	./result/sw/bin/darwin-rebuild switch --flake .

shell-reset:
	sudo chsh -s /run/current-system/sw/bin/bash
