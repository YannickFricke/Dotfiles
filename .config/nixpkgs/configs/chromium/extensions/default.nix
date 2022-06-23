let
  basicExtensions = import ./basic.nix;
  twitchExtensions = import ./twitch.nix;
  developmentExtensions = import ./development.nix;
  otherExtensions = import ./other.nix;
in
basicExtensions ++ twitchExtensions ++ developmentExtensions ++ otherExtensions
