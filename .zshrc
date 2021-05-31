source $HOME/secrets.sh

# Disable auto naming of windows
DISABLE_AUTO_TITLE="true"

# N (node version manager)
export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$HOME/go/bin/:$HOME/neovim/bin:$PATH
export PATH=/home/yfr/.yarn/bin:$PATH

# Oh-My-ZSH
export ZSH="/home/yfr/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git docker docker-compose)

source $ZSH/oh-my-zsh.sh

# Zplug
source ~/.zplug/init.zsh

zplug "YannickFricke/yarn-completion", from:github
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/docker",   from:oh-my-zsh
zplug "plugins/docker-compose",   from:oh-my-zsh
zplug "zsh-users/zsh-completions", depth:1
zplug "zsh-users/zsh-autosuggestions", from:github
zplug "zsh-users/zsh-syntax-highlighting", from:github, defer:1
zplug "hlissner/zsh-autopair", defer:2
zplug "YannickFricke/NodeAliases", use:"aliases.sh"
zplug "code-stats/code-stats-zsh", from:gitlab, use:"codestats.plugin.zsh"
zplug "jerguslejko/zsh-symfony-completion", use:"symfony-console.plugin.zsh"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

# Overwrite aliases
alias gc="git commit -v -S"
alias ls="exa -la"
alias tis="tig status"
alias dc="docker-compose"
alias watch="watch -n 1"
alias ta="tmux attach"
alias vim="nvim"
alias update="sudo aptitude update && sudo aptitude upgrade -y"
alias yadf="yarn add -D -W"

alias nemo="pcmanfm"
alias nautilus="pcmanfm"
alias open="xdg-open"
alias pwc="pwd | xclip -sel clip"

# Path extensions

# Global composer packages
if [ -d "$HOME/.config/composer/vendor/bin" ]; then
  export PATH="$PATH:$HOME/.config/composer/vendor/bin"
fi

# Functions

# Create and enter directory
mkd() {
	mkdir -p -- "$1" &&
    cd -P -- "$1" && clear
}

tns() {
    currentDir=`pwd | grep -oP '((.*)\/)?\K.*' -h | tr -d -`

    if [ "$TMUX" = "" ]; then
    	tmux new -s "$currentDir"
    else
    	tmux new -d -s "$currentDir"
    	tmux switch -t "$currentDir"
    fi
}

tnscd ()
{
    cd -P -- "$1"
    tns
}

runCommandInSubdirs() {
    export THE_COMMAND=$@
  	find . -maxdepth 1 -mindepth 1 -type d -print0 | xargs -0 -I{} zsh -c 'cd "{}" && echo "{}" && echo "$('$THE_COMMAND')" && echo -e'
}

# Codi - the interactive scratchpad
# Usage: codi [filetype] [filename]
codi() {
  local syntax="${1:-javascript}"
  shift
  nvim -c \
    "let g:startify_disable_at_vimenter = 1 |\
    set bt=nofile ls=0 noru nonu nornu |\
    hi ColorColumn ctermbg=NONE |\
    hi VertSplit ctermbg=NONE |\
    hi NonText ctermfg=0 |\
    Codi $syntax" "$@"
}

# Load Linuxbrew
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Load skaffold zsh completions
eval $(skaffold completion zsh)

# Load zsh completions from homebrew
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# HSTR configuration - add this to ~/.zshrc
alias hh=hstr                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)

clear

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /src/personal/vue-plugin-system/packages/client/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /src/personal/vue-plugin-system/packages/client/node_modules/tabtab/.completions/electron-forge.zsh

eval $(thefuck --alias)
