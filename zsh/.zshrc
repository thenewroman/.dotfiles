# oh-my-zsh configuration
export ZSH="$HOME/.oh-my-zsh"
zstyle ':omz:update' mode auto # update automatically without asking
zstyle ':omz:update' frequency 7 # auto-update (in days)
ZSH_THEME="custom"
CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f" # display dots whilst waiting for completion
plugins=(git)
source $ZSH/oh-my-zsh.sh
