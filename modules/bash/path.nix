# Credits: https://raw.githubusercontent.com/webpro/dotfiles/32d847b2f0fa866e037c6118e1116736a0cb0c8b/system/.path

prepend-path() {
  [ -d $1 ] && PATH="$1:$PATH"
}

# Prepend new items to path (if directory exists)

prepend-path "/bin"
prepend-path "/sbin"
prepend-path "/usr/bin"
prepend-path "/usr/sbin"
prepend-path "/usr/local/bin"
prepend-path "$HOME/.nix-profile/bin"
prepend-path "/nix/var/nix/profiles/default/bin"

export PATH

