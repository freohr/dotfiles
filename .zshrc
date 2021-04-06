# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
    export ZSH=$HOME/.oh-my-zsh
    export PATH=$PATH:$HOME/Qt/Tools/QtCreator/bin/:$HOME/Documents/NW:$HOME/workspaces/tools/scripts
    export PATH=$PATH:$HOME/witekio_scripts
    export PATH=$PATH:$HOME/.local/bin
    export PATH=$PATH:$HOME/Workspace/tools/run-clang-format
    export PATH=$PATH:$HOME/Workspace/tools/sonoScripts
    export PATH=$PATH:$HOME/Workspace/libs
    export PATH=$PATH:$HOME/Workspace/libs/json-3.7.0
    export PATH=$PATH:$HOME/Workspace/scripts
    export PATH=$PATH:$HOME/Qt5.11.3/Tools/QtCreator/bin
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(
  gitfast
  mercurial
  pip
  colored-man-pages
  docker
  history-substring-search
  dirhistory
  sudo
  virtualenv
  kubectl
)

source $ZSH/oh-my-zsh.sh

# User configuration

 #export MANPATH="/usr/local/man:$MANPATH"
export QT_QPA_PLATFORMTHEME=qt5ct

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

[ -e ~/.config/aws-credentials.sh ] && source ~/.config/aws-credentials.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# ZSH aliases
alias zshconfig="vi ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias update-config="config pull --rebase; config submodule update --recursive"
alias update-config-force"config fetch; config reset --hard origin/master; config submodule update --recursive --force"

# Other Aliases
alias xclipc="xclip -selection c"
alias pip3="python3 -m pip"
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias vcpkg="/home/stephen/workspace/libs/vcpkg/vcpkg"
alias kc="kubectl"

# Completion scripts
# Enable Bash completions scripts
autoload bashcompinit && bashcompinit
type terraform 2>&1 > /dev/null && complete -o nospace -C $(where terraform) terraform
source ~/.config/az.completion
