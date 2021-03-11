source /usr/local/opt/gitstatus/gitstatus.prompt.zsh

ls=""
ls2=""
rs=""
rs2=""
fail=""
os_icon=""
prompt_symbol=""

blank="#282C34"

function check_last_exit_code() {
  echo "%(?..%K{red}%F{$blank}$ls%F{$blank}%K{red} $fail %K{$blank}%F{red}$ls%f%k)"
}

function os_block() {
  local OS_SEGMENT="%F{$blank}%K{green} $os_icon %F{green}%K{$blank}$ls%f%k"
  echo "$OS_SEGMENT"
}

function dir() {
  echo "%K{blue}%F{$blank}$ls%f%K{blue} %F{16}%2~ %k%F{blue}$ls"
}

function end_prompt() {
  echo "%K{yellow}%F{$blank}$ls%F{$blank}%K{yellow}$prompt_symbol%F{yellow}%K{$blank}$ls%f%k "

}

setopt prompt_subst
PROMPT='
$(os_block)$(dir)$(check_last_exit_code)$(end_prompt)'
RPROMPT='$GITSTATUS_PROMPT' 
