# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/ligy/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys" #obraun xiong-chiamiov dpoggi

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.


plugins=(z cp git extract tmux zsh-autosuggestions zsh-syntax-highlighting taskwarrior) #last-working-dir emacs

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='emacs' #vim
else
  export EDITOR='emacs' #mvim
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias l="ls -lh"
alias wifi="nmtui"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=10"
# alias open="xdg-open"
alias mathematica=". /usr/local/Wolfram/Mathematica/9.0/Executables/mathematica"
alias r="ranger"
alias lg='git logg > /tmp/tmp999 && cat /tmp/tmp999|head -n 10'
mkcd(){ #mkdir then change dir
	mkdir -p "$1" && cd "$1"
}
# recent(){ #recent file recorded in file: ~/.local/share/recently-used.xbel
#     awk -F"file://|\" " '/file:\/\// {print $2}' ~/.local/share/recently-used.xbel |grep "$1"
# }
# recent(){ #recent file accessed within the last 4 weeks
#     print -l **/*(.am-40320)|grep "$1"
# }
# s(){ #search dir: /home to fit string
#     find ~ -iname "*$1*" -exec ls {} \;
# }

# export LANG=en_US.UTF-8
# export LC_CTYPE=zh_CN.UTF-8

alias e="LC_CTYPE=zh_CN.UTF-8 TERM=xterm-256color emacs -nw"
alias ee="LC_CTYPE=zh_CN.UTF-8 TERM=xterm-256color emacs"
# alias e="LC_CTYPE=zh_CN.UTF-8 TERM=xterm-256color emacs -nw --no-splash --no-site-file"

#user-defined ys prompt:
PROMPT="
%{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \
%(#,%{$bg[yellow]%}%{$fg[black]%}%n%{$reset_color%},%{$fg[cyan]%}%n) \
%{$fg[white]%}@ \
%{$fg[green]%}%m \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[yellow]%}%c%{$reset_color%}\
${hg_info}\
${git_info}\
 \
%{$fg[white]%}[%*] $exit_code
%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"

# if [ -n "$INSIDE_EMACS" ]; then
#     # function to set the dired and host for ansiterm
#     set_eterm_dir() {
#         print -P "\033AnSiTu %n"
#         print -P "\033AnSiTh" "$(hostname -f)"
#         print -P "\033AnSiTc %d"
#     }
#     # call prmptcmd whenever prompt is redrawn
#     precmd_functions=($precmd_functions set_eterm_dir)
# fi

# added by Anaconda3 installer
export PATH="/home/ligy/anaconda3/bin:$PATH"

export TERM="xterm-256color"

alias et='/opt/wps-office_10.1.0.6634_x86_64/et'
alias wps='/opt/wps-office_10.1.0.6634_x86_64/wps'
alias wpp='/opt/wps-office_10.1.0.6634_x86_64/wpp'
alias kg='kaggle'

#alias rm to mv, trash dir: /data/trash
# alias rm='trash' #命令别名 rm改变为trash，通过将rm命令别名值trash来实现把rm改造成删除文件至回收站
# alias rl='ls ~/Trash' # rl 命令显示回收站中的文件
# alias ur='undelfile' # ur命令找回回收站中的文件
# undelfile() #这个函数的作用是找回回收站下的文件
# {
#   mv -i ~/Trash/$@ ./
# }
# trash() #这个函数是将指定的文件移动到指定的目录下，通过将rm命令别名值trash来实现把rm改造成删除文件至回收站
# {
#   mv $@ ~/Trash
# }
