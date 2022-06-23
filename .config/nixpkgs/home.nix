{ config, pkgs, ... }:
let
  chromiumConfig = import ./configs/chromium;
  direnvConfig = import ./configs/direnv.nix;
  gitConfig = import ./configs/git.nix;
  i3Config = import ./configs/i3;
  tmuxConfig = import ./configs/tmux.nix (pkgs);
  tigConfig = import ./configs/tig;
  userPackages = import ./userPackages.nix (pkgs);
  vlcConfig = import ./configs/vlc;
  x11Config = import ./configs/x11;
  zshConfig = import ./configs/zsh;
in
rec {
  nixpkgs.config.allowUnfree = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "yfr";
  home.homeDirectory = "/home/${home.username}";

  home.file.".tigrc".source = tigConfig.tigConfigurationFilePath;
  home.file.".Xresources".source = x11Config.xResourcesPath;
  home.file.".i3/config".source = i3Config.i3ConfigPath;
  home.file.".local/share/vlc/lua/extensions/Now playing in texts.lua".source = vlcConfig.plugins.NowPlayingInTexts;
  home.file."bin/commit.sh".source = ./scripts/commit.sh;

  home.packages = userPackages;

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";

  # Let Home Manager install and manage itself.
  programs.bat.enable = true;
  programs.chromium = chromiumConfig;
  programs.direnv = direnvConfig;
  programs.gh.enable = true;
  programs.git = gitConfig;
  programs.home-manager.enable = true;
  programs.jq.enable = true;
  programs.lsd.enable = true;
  programs."obs-studio".enable = true;
  programs.tmux = tmuxConfig;
  programs.vscode.enable = true;
  programs.zsh = zshConfig;
}
