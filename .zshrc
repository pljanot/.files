export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

export PATH="$PATH":"$HOME/.local/scripts/"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
#bind '"\C-f":"tmux-sessionizer\n"'

alias vim='command -v nvim >/dev/null 2>&1 && nvim || vim'
alias vi='vim'

plugins=(git tmux rsync cp ansible ubuntu fzf wd)

export FZF_BASE=~/.fzf
export EDITOR=vim
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $ZSH/oh-my-zsh.sh
