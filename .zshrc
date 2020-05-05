source $HOME/secrets.sh

# Disable auto naming of windows
DISABLE_AUTO_TITLE="true"

# N (node version manager)
export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH

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
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# Overwrite aliases
alias gc="git commit -v -S"
alias ls="exa -la"
alias tis="tig status"
alias dc="docker-compose"

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

tnscd ()
{
    cd -P -- "$1"
    tns
}

# Load Linuxbrew
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# HSTR configuration - add this to ~/.zshrc
alias hh=hstr                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)

clear
