if [ "$PS1" ]
then
    case ${TERM} in
        xterm*)
            PROMPT_COMMAND='printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
            ;;
        screen*)
            PROMPT_COMMAND='printf "\033]0;%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
            ;;
    esac

    [ "$PS1" = "\\s-\\v\\\$ " ] && PS1="[\u@\e[0;36m\]\h\[\e[m\] \W]\\$ "
fi

alias vi='vim'
alias ls='ls -G'
alias apg='apg -m12 -x12 -MSNCL -t'
alias vmip='VBoxManage guestproperty get "Linux" "/VirtualBox/GuestInfo/Net/0/V4/IP" | cut -f2 -d ""'

PATH=$PATH:~/bin:~/go/bin
HISTCONTROL=ignoreboth:erasedups
