{
  reload_env = "source $HOME/.zshenv && source $HOME/.zshrc";
  update = "clear && home-manager switch && reload_env";
  "update-system" = "clear && sudo nixos-rebuild switch";
  clean_system = "nix-collect-garbage -d";
}
