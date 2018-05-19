# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

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
alias la='ls -A'
alias l='ls -l'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

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

#alias ifortt='ifort -openmp -I/usr/local/imsl/fnl700/susin111x64/include'
#alias g++= 'g++ -I/usr/local/include/blit'
#. /opt/intel/bin/compilervars.sh intel64
#source /usr/local/imsl/fnl700/susin111x64/bin/susin111x64.sh
#source /usr/local/imsl/fnl700/susin111x64/bin/fnlsetup.sh

#export TERM="screen-256color"
export TERM="xterm-256color"

PS1="\[\e[32m\][\h \T \W]$\[\e[m\]" 

alias math='/home/ligy/software/mathematica/Executables/math'

alias rm="rm -i"

baiduCloud=(/media/ligy/files/baiduCloud/)
physics=(/media/ligy/files/baiduCloud/physics/)
papers=(/media/ligy/files/baiduCloud/physics/papers/)
#mendeley=(/media/ligy/files/baiduCloud/physics/Mendeley Desktop for linux/)
working=(/media/ligy/files/baiduCloud/working/)
G_work=(/home/ligy/program/heom_G_work/)
#[ -f ~/.markrc ] && source ~/.markrc
kuaipan=(~/KuaiPan/)
latexscript=(/media/ligy/files/baiduCloud/working/LaTeX_scripts)
password=(/media/ligy/files/baiduCloud/physics/password密码/)
chain=(/home/ligy/program/NRG_CPP/chain/chain-3.2)

#alias emacs='LC_CTYPE=zh_CN.UTF-8 TERM=xterm-256color emacs -nw'
alias e='LC_CTYPE=zh_CN.UTF-8 TERM=xterm-256color emacs -nw'
alias cp='cp -rv'
alias open='xdg-open'
#alias cp='rsync -avPh'
alias lg="git logg > /tmp/tmp999 && echo "EOF" >> /tmp/tmp999 && cat /tmp/tmp999 "
alias t='task'

#gsl 
LD_LIBRARY_PATH=/usr/local/lib

#boost
BOOST_INCLUDE=/usr/local/include/boost
export BOOST_INCLUDE
BOOST_LIB=/usr/local/lib
export BOOST_LIB

#eigen
#EIGEN_INCLUDE=/usr/local/include/eigen3
#export EIGEN_INCLUDE

#intel MKL
#. /opt/bin/compilervars.sh

# mkdir and enter it
mkcd()
{
        mkdir -p "$1" && cd "$1"
}

#fish
#exec fish

#alias vim='nvim'

#zsh

# export LANG=en_US.UTF-8
# export LC_CTYPE=zh_CN.UTF-8
