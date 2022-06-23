{
  mkd = ''
    # Create and enter directory
    mkd() {
    	mkdir -p -- "$1" &&
        cd -P -- "$1" && clear
    }
  '';

  copyFile = ''
    # Copies the file from the given path into the clipboard
    copyFile() {
        cat $1 | xclip -sel clip
    }
  '';

  runCommandInSubdirs = ''
    # Runs the given command in all direct subdirectories from the current directory.
    runCommandInSubdirs() {
        export THE_COMMAND=$@
        find . -maxdepth 1 -mindepth 1 -type d -print0 | xargs -0 -I{} zsh -c 'cd "{}" && echo "{}" && echo "$('$THE_COMMAND')" && echo -e'
    }
  '';
}
