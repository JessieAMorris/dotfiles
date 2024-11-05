eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/opt/homebrew/bin:$PATH"

eval $(thefuck --alias)

alias ll="ls -l"
alias la="ls -la"

alias vim="nvim"
alias vi="nvim"

set -o vi

export PATH=$PATH:~/libs/bin/:/usr/local/bin/

####################################################
# Kubernetes
####################################################
alias k="kubectl"
alias kctx="k config use-context"
alias kns="k config set-context --current --namespace"
source "/opt/homebrew/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1)'$PS1


####################################################
# Completion
####################################################
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
source <(kubectl completion zsh)
complete -C 'aws_completer' aws

eval "$(pyenv init -)"

export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# Allow terraform to use the profile
export AWS_SDK_LOAD_CONFIG=1

export PATH="/usr/local/opt/python@3.8/bin:$PATH"

# Krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

eval "$(direnv hook zsh)"

export PATH="$HOME/go/bin/:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GOPATH="$HOME/go"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock

export AWS_PROFILE="dev"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
