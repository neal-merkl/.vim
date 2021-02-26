# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/nealmerkl/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=avit

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=("avit")

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-nvm git zsh-autosuggestions)
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

eval $(thefuck --alias)
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases

export NVM_DIR=~/.nvm
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_201.jdk/Contents/Home/
export GOPATH="$HOME/go:$HOME/workspace/bundled-payments/chaincodes"
# export GOPATH="$HOME/go:$HOME/workspace/owner-mediated-records/chaincodes"
export PATH=$PATH:$HOME/workspace/fabric/fabric-samples/bin:/usr/local/opt/helm@2/bin
export BX_APIKEY=FnI3djB_Sb3A4YL89y9-RlR1xfB3_gCtqQRpp8eCMkbc
export CDT_APIKEY=_q59SwZlT-1zJfhZv8wooXnhTR_YJUbunFkyTqgdjbtr
export HUN_APIKEY=1OCW-bgygU80-f4PZODFlHa5uwcCw_Ob8XkjZYr2cFSC
export GITLAB_TOKEN=sVVg-5aP7pX4tiNZxtRh
export GITHUB_TOKEN=9c1a54a9a31b19bdad4ad145dc424fe7a387d075
# export CLOUDANT_USERNAME=11bc4102-8a3a-4d60-88ae-43f07c62d509-bluemix
# export CLOUDANT_PASSWORD=105102a7be625c5481e9b3f3ffbb675e911bc7e736753f565624bed197323a0f
# export CLOUDANT_DATABASE=test-offchain1
# export CLOUDANT_HOST="https://11bc4102-8a3a-4d60-88ae-43f07c62d509-bluemix.cloudantnosqldb.appdomain.cloud"

alias vzsh="vim ~/.zshrc"
alias szsh="source ~/.zshrc"
alias work="cd ~/workspace"
alias bxlogin="bx login --apikey $BX_APIKEY"
alias cdtlogin="bx login --apikey $CDT_APIKEY"
alias hunlogin="bx login --apikey $HUN_APIKEY"
alias size="du -sh"
alias dps="docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Ports}}\t{{.Status}}'"
alias dimgs="docker images --format 'table {{.ID}}\t{{.Repository}}:{{.Tag}}\t{{.Size}}\t{{.CreatedSince}}'"
alias dctns="docker container ls --format 'table {{.ID}}\t{{.Names}}\t{{.Ports}}\t{{.Networks}}\t{{.Status}}' -a"
alias mk="minikube"
alias mkk="minikube kubectl"
alias kctxt="k config current-context"
alias ksetns="k config set-context --current --namespace" 
alias clusters="bx cs clusters"
alias clusterconfig="bx cs cluster config -c"
alias bpkube="export KUBECONFIG=/Users/nealmerkl/.bluemix/plugins/container-service/clusters/bundled-payments/kube-config-dal12-bundled-payments.yml"
alias pycompile="python3 -m py_compile"

if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi
source ~/.nvm/nvm.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

echo "Hi Neal 👀 Hope you're having a wonderful day 🌞"
