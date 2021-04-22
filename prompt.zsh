source /usr/local/opt/gitstatus/gitstatus.prompt.zsh

ls=""
ls2=""
rs=""
rs2=""
fail=""
os_icon=""
prompt_symbol=""


function check_last_exit_code() {
  echo "%(?..%K{red}%F{}$ls%F{black}%K{red} $fail %K{black}%F{red}$ls%f%k)"
}

function os_block() {
  local OS_SEGMENT="%F{black}%K{green} $os_icon %F{green}%K{black}$ls%f%k"
  echo "$OS_SEGMENT"
}

function dir() {
  echo "%K{blue}%F{black}$ls%f%K{blue} %F{black}%2~ %K{black}%F{blue}$ls"
}

function end_prompt() {
  echo "%K{yellow}%F{black}$ls%F{black}%K{yellow}$prompt_symbol%F{yellow}%K{black}$ls%f%k "

}

setopt prompt_subst
PROMPT='
$(os_block)$(dir)$(check_last_exit_code)$(end_prompt)'
RPROMPT='$GITSTATUS_PROMPT' 
