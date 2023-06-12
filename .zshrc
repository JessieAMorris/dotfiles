eval $(thefuck --alias)

alias ll="ls -l"
alias la="ls -la"

alias k="kubectl"

kube_prompt() {
   kubectl_current_context=$(kubectl config current-context)
   kubectl_project=$(echo $kubectl_current_context | cut -d '_' -f 2)
   kubectl_cluster=$(echo $kubectl_current_context | cut -d '_' -f 4)
   kubectl_prompt="($kubectl_project|$kubectl_cluster)"
   echo $kubectl_prompt
}

source /opt/homebrew/share/kube-ps1.sh
PROMPT='$(kube_ps1)'$PROMPT

autoload -Uz compinit && compinit
autoload bashcompinit && bashcompinit
source <(kubectl completion zsh)
complete -C 'aws_completer' aws


set -o vi

export PATH=$PATH:~/libs/bin/:/usr/local/bin/

alias kctx="k config use-context"
alias kns="k config set-context --current --namespace"

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

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
