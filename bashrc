# If not running interactively, don't do anything
if [[ -n "$PS1" ]]; then

HISTCONTROL=ignoredups:ignorespace
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# Anarchy Red
# clr1="\[\033[0;37m\]"
# clr2="\[\033[1;33m\]"
# clr3="\[\033[1;31m\]" 
# noclr="\[\033[00m\]"

# Cool Gray
clr1="\[\033[2;49;97m\]"
clr2="\[\033[4;49;90m\]"
clr3="\[\033[2;49;37m\]"
noclr="\[\033[00m\]"

if [ "$color_prompt" = yes ]; then
    PS1="$clr3/─$clr3(A)"$clr1"narchy$clr3───($clr1\u$clr3)───($clr1\W$clr3)───o\n$clr3\─"$clr3"0"$clr1"rders$clr3─── $noclr"
else
    PS1="❨A❩┬narchy─◓─❮\u❭─◒─❬\W❭─◉\n   ╰─❨❩rders─◈─▶ "
fi
unset color_prompt force_color_prompt

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
  export HISTCONTROL=ignoreboth
fi

export PATH=$PATH:/etc/alternatives/gem-bin

