let
  dockerAliases = import ./docker.nix;
  gitAliases = import ./git.nix;
  nixAliases = import ./nix.nix;
  systemAliases = import ./system.nix;
  tmuxAliases = import ./tmux.nix;
in
dockerAliases // gitAliases // nixAliases // systemAliases // systemAliases // tmuxAliases
