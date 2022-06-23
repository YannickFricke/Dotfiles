let
  aliases = import ./aliases;
  hstrInitString = import ./hstr.nix;
  zPlugConfig = import ./zplug.nix;
  omzConfig = import ./omz.nix;
  fsFunctions = import ./functions/fs.nix;
  tmuxFunctions = import ./functions/tmux.nix;
in
{
  enable = true;
  enableCompletion = true;
  enableSyntaxHighlighting = true;

  # The `tnsCd` function already contains the `tns` function because it is its dependency
  initExtra = ''
    ${fsFunctions.mkd}
    ${fsFunctions.copyFile}
    ${fsFunctions.runCommandInSubdirs}
    ${tmuxFunctions.tnsCd}

    export PATH=$PATH:$HOME/.config/yarn/global/node_modules/.bin

    ${hstrInitString}
  '';

  # environment.pathsToLink = [ "/share/zsh" ];

  shellAliases = aliases;

  oh-my-zsh = omzConfig;
  zplug = zPlugConfig;
}
