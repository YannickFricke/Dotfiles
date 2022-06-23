pkgs:
{
  enable = true;
  baseIndex = 1;
  clock24 = true;
  extraConfig = ''
    # Bind split keys
    bind '"' split-window -c "#{pane_current_path}"
    bind % split-window -h -c "#{pane_current_path}"

    # tmux should not rename the window names
    set-option -g allow-rename off

    # Set the theme which should be used by tmux
    set -g @themepack 'powerline/default/green'
  '';

  tmuxp.enable = true;
  tmuxinator.enable = true;

  plugins = with pkgs; [
    tmuxPlugins.power-theme
    tmuxPlugins.sensible
  ];
}
