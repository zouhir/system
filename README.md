# Zouhir's Dotfiles

## Prerequisites

Install nix via determinate installer to get both nix and flakes enabled (docs said that, idk):

```shell
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

Install home manager:

```shell
$ nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
$ nix-channel --update

$ nix-shell '<home-manager>' -A install
```

## Run

```shell
make darwin
```

```shell
make home
```
