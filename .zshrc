# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

#! /bin/zsh

#export TERM=xterm-256color

source ~/.zplug/init.zsh

PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

export CLICOLOR=YES
export LSCOLORS="Gxfxcxdxbxegedabagacad"

alias now="date \"+%l %M %p\" | say"
alias l="ls -alh"
alias ~="cd ~"
alias n="nvim"

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color bw
'

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

#zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "Zsh-Packages/fzf"
zplug "Aloxaf/fzf-tab"
zplug "wting/autojump"
#zplug romkatv/powerlevel10k, as:theme, depth:1

# fortune | cowsay -f $(ls /usr/local/Cellar/cowsay/3.04_1/share/cows | shuf -n1)
# say -v 'alex' '[[inpt PHON]](AY AEm 1kAOmpIYUWtr2AOn % yOWr AEnsEHr tUW EHvrIY=TIHng.)'

export EDITOR="/usr/local/bin/nvim"

#source ~/prompt.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/bengoldman/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "/Users/bengoldman/anaconda3/etc/profile.d/conda.sh" ]; then
    . "/Users/bengoldman/anaconda3/etc/profile.d/conda.sh"
  else
    export PATH="/Users/bengoldman/anaconda3/bin:$PATH"
  fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/Users/bengoldman/go/bin:$PATH"
export PATH="/Users/bengoldman/.emcas.d/bin:$PATH"
export PATH="/Users/bengoldman/.local/bin:$PATH"
export PATH="/Users/bengoldman/.ghcup/bin:$PATH"

zplug load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#source ~/dotfiles/prompt.zsh

eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'

nvim-choose-theme() { cp /Users/bengoldman/.vim/bundle/base16-vim/colors/base16-$1.vim /Users/bengoldman/.vim/bundle/base16-vim/colors/base16-selected.vim }
alacritty-choose-theme() { cp /Users/bengoldman/.base16-manager/aaron-williamson/base16-alacritty/colors/base16-$1.yml /Users/bengoldman/.base16-manager/aaron-williamson/base16-alacritty/colors/base16-selected.yml }
choose-theme() {alacritty-choose-theme $1; nvim-choose-theme $1}

source /usr/local/Cellar/autojump/22.5.3_2/share/autojump/autojump.zsh

# [ -f "/Users/bengoldman/.ghcup/env" ] && source "/Users/bengoldman/.ghcup/env" # ghcup-env

eval $(thefuck --alias)
