rec {
  tns = ''
    # Create a new tmux session based on the name of the current directory
    tns() {
        currentDir=`pwd | grep -oP '((.*)\/)?\K.*' -h | tr -d -`

        if [ "$TMUX" = "" ]; then
          # Create and switch to the new session
        	tmux new -s "$currentDir"
        else
          # Create the new tmux session in the background
        	tmux new -d -s "$currentDir"

          # Switch to the new tmux session
        	tmux switch -t "$currentDir"
        fi
    }
  '';

  tnsCd = ''
    ${tns}

    # Switch to the given directory and start a new tmux session there
    tnscd ()
    {
        cd -P -- "$1"
        tns
    }
  '';
}
