# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/ewan/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="passion"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/.aliases

# Virtualenvwrapper setup
#export WORKON_HOME=~/.venvs
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
#source /usr/local/bin/virtualenvwrapper.sh

# 'z' setup
source /opt/homebrew/etc/profile.d/z.sh

# Go setup
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)
export GOBIN=$(go env GOPATH)/bin

# Rust setup
export PATH=$PATH:$HOME/.cargo/bin

export GPG_TTY=$(tty)

export PATH="$HOME/Library/Python/3.8/bin:$HOME/.local/bin:$HOME/bin:$PATH"

# Custom path
export DEVEL=$HOME/Development

# Custom Jupyter Notebook Directory
export JUPYTER_NB_DIR=$HOME/OneDrive/Jupyter/Notebooks

# AndroidSDK path
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk

# Add "oc" command completion
#source <(oc completion zsh)

# NVM for multiple node versions
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Add yarn global to path
export PATH=$PATH:$(yarn global bin)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Custom functions
encstr() {
   echo -n "$2" | ansible-vault encrypt_string --vault-password-file="$1" | pbcopy
}

dencstr() {
   echo "$2" | ansible-vault decrypt --vault-password-file="$1" /dev/stdin --output=/dev/stderr > /dev/null
}

# Cowsay fortune!
#cowsay $(fortune -a)



# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Add LaTeX utils from BasicTeX to PATH
export PATH="$PATH:/Library/TeX/texbin"

# And now for adding kubectl aliases
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
function kubectl() { echo "+ kubectl $@"; command kubectl $@; }
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

export PATH="$HOME/.poetry/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ewan/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ewan/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ewan/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ewan/bin/google-cloud-sdk/completion.zsh.inc'; fi
