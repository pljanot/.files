export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

PATH="$PATH":"$HOME/.local/scripts/"
#bind '"\C-f":"tmux-sessionizer\n"'

plugins=(git tmux rsync cp ansible ubuntu fzf wd)

export FZF_BASE=~/.fzf
export EDITOR=vim
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $ZSH/oh-my-zsh.sh
