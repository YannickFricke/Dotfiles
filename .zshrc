# Load the ASDF version manager
. $HOME/.asdf/asdf.sh

# Set the default editor to nvim
export EDITOR=nvim

# oh-my-zsh configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

plugins=(git)
source $ZSH/oh-my-zsh.sh

# Load Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# My custom aliases
alias md="mkdir -p"
alias ls="lsd -la"
alias ta="tmux attach"
alias tis="tig status"
alias g="git"
alias ga="git add"
alias gp="git push"
alias gl="git pull"
alias gm="git merge"
alias gc="git commit"
alias gco="git checkout"
alias gcd="git checkout develop"
alias gcm="git checkout master"
alias grhh="git reset --hard"
alias gr="git remote"
alias gra="git remote add"
alias ..="cd .."
alias _="sudo"
alias pls="sudo"
alias open="xdg-open";
alias cls="clear"
alias dc="docker compose";
alias ya="yarn add"
alias yad="yarn add -D"
alias yr="yarn run"
alias yif="yarn init -y"
alias k="kubectl"

# An alias for copying the current path into the clipboard
alias pwc="pwd | xclip -sel clip";

# Watch should refresh by default every second
alias watch="watch -n 1";

alias edit_config="nano ~/.zshrc && source ~/.zshrc"

# Custom functions

# Open VSCode based on the current working directory
c() {
  WORKSPACE_FILE=""

  for file in *;
  do
    if [[ $file =~ ^.*\.code-workspace$ ]]
    then
      WORKSPACE_FILE=$(realpath $file)
    fi
  done

  if [[ $WORKSPACE_FILE = "" ]]
  then
    echo "Opening current directory in VSCode"
    code .
  else
    echo "Opening workspace $WORKSPACE_FILE in VSCode"
    code $WORKSPACE_FILE
  fi
}

# Create and enter directory
mkd() {
  mkdir -p -- "$1" &&
    cd -P -- "$1" && clear
}

# Copies the file from the given path into the clipboard
copyFile() {
    cat $1 | xclip -sel clip
}

# Runs the given command in all direct subdirectories from the current directory.
runCommandInSubdirs() {
    export THE_COMMAND=$@
    find . -maxdepth 1 -mindepth 1 -type d -print0 | xargs -0 -I{} zsh -c 'cd "{}" && echo "{}" && echo "$('$THE_COMMAND')" && echo -e'
}

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

# Switch to the given directory and start a new tmux session there
tnscd ()
{
    cd -P -- "$1"
    tns
}

kill_command_by_name_and_args()
{
  ps axf | grep $1 | grep -v grep | awk '{print "kill -9 " $1}' | sh
}

kill_shopify_serve()
{
  kill_command_by_name_and_args "shopify theme serve"
}

# HSTR configuration
alias hh=hstr
setopt histignorespace
export HSTR_CONFIG=hicolor
# Bind "CTRL" + "R" to hstr
bindkey -s "\C-r" "\C-a hstr -- \C-j"
