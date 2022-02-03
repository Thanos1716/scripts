
# ~/.bashrc

# WARNING: This will override the functionality of both openvt (virtual terminal) and start from init.
case "$OSTYPE" in
   cygwin*)
      alias open="cmd /c start"
      ;;
   linux*)
      alias start="xdg-open"
      alias open="xdg-open"
      ;;
   darwin*)
      alias start="open"
      ;;
esac

export PATH="$PATH:~/Scripts"


# [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


### ALIASES ###

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias grep="grep --color=auto"

alias ls="ls -1 --classify --color=auto"
alias sl="ls"
alias ll="ls -l --no-group --human-readable"
alias la="ls --almost-all"

alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias ln="ln -i"


# function lu() {
#     # for var in $@
#     # do
#     #     du -sxch $var | sort -gr;
#     # done
#     if [ $# == 0 ]; then
#         du -sxhc * | sort -gr
#     else
#         du -sxhc $@ | sort -gr;
#     fi
# }


# Quicker navigation

# Shortcuts to my Code folder in my home directory
# alias code="cd ~/Desktop/Code"
# alias sites="cd ~/Code/sites"

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Colored up cat!
# You must install Pygments first - "sudo easy_install Pygments"
# alias n='pygmentize -O style=monokai -f console256 -g'


### Prompt Colors
# Modified version of @gf3’s Sexy Bash Prompt
# (https://github.com/gf3/dotfiles)
if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
    export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
    export TERM=xterm-256color
fi

if tput setaf 1 &> /dev/null; then
    tput sgr0
    if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
        BLACK=$(tput setaf 190)
        MAGENTA=$(tput setaf 9)
        ORANGE=$(tput setaf 172)
        GREEN=$(tput setaf 190)
        PURPLE=$(tput setaf 141)
        WHITE=$(tput setaf 0)
    else
        BLACK=$(tput setaf 190)
        MAGENTA=$(tput setaf 5)
        ORANGE=$(tput setaf 4)
        GREEN=$(tput setaf 2)
        PURPLE=$(tput setaf 1)
        WHITE=$(tput setaf 7)
    fi
    BOLD=$(tput bold)
    RESET=$(tput sgr0)
else
    BLACK="\033 [01;30m"
    MAGENTA="\033[1;31m"
    ORANGE="\033[1;33m"
    GREEN="\033[1;32m"
    PURPLE="\033[1;35m"
    WHITE="\033[1;37m"
    BOLD=""
    RESET="\033[m"
fi

export BLACK
export MAGENTA
export ORANGE
export GREEN
export PURPLE
export WHITE
export BOLD
export RESET


# Change this symbol to something sweet.
# (http://en.wikipedia.org/wiki/Unicode_symbols)
# (https://keyboard.cool/db/)
symbol="ᛟ "


parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# PS1='\[\e[1;91m\][\u@\h \w]\[\e[0m\][\033[32m\]\$(parse_git_branch)\[\033[00m\]$'

export PS1="\[${BOLD}${MAGENTA}\]\u \[$WHITE\]in \[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]\n$symbol\[$RESET\]"
export PS2="\[$ORANGE\]→ \[$RESET\]"






### Misc

# Only show the current directory's name in the tab
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'


#Export PATH=/Applications/MAMP/Library/bin:/Applications/MAMP/bin/php/php5.6.7/bin:$PATH

PATH=~/.composer/vendor/bin:$PATH
export PATH=$PATH:~/bin

# echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.bash_profile
# export PATH=$HOME/bin:/usr/local/bin:~/.composer/vendor/bin:$PATH


# echo 'export PATH="$PATH:~/.composer/vendor/bin"' >> ~/.bashrc


# Good ones to keep and use
alias copykey="cat ~/.github_token.key | pbcopy"

# 'cat ~/.ssh/github_rsa.key | pbcopy'
# alias c='clear'
# alias art="php artisan"
# alias routes="php artisan routes"
alias profile='subl ~/.bash_profile ~/Scripts ~/.code_ref'

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.9
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH

# Setting PATH for Python 3.10
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH

#                        [Your_Name]-----|                                |=======|------[Your_Distro]
#                 [Color]--------|       |                   [Color]------|       |
#          [Style]------------|  |       |             [Style]---------|  |       |
#                             V  V       V                             V  V       V
#PS1='\[\033[01;37m\]┌─[\[\033[01;32m\]thanos\[\033[01;37m\]]-[\[\033[01;36m\]archusbus\[\033[01;37m\]]-[\[\033[01;33m\]\W\[\033[00;37m\]\[\033[01;37m\]]
#\[\033[01;37m\]└─[\[\033[05;33m\]$\[\033[00;37m\]\[\033[01;37m\]]\[\033[00;37m\] '
#                         A  A   A
#              [Style]----|  |   |-------- [Your_Choice]
#         [Color]------------|


curl -s https://pngimg.com/uploads/trollface/trollface_PNG3.png > ~/Desktop/face0.png
for (( c=1; c<=10; c++ ))
do
    cp ~/Desktop/face0.png ~/Desktop/face${c}.png
done

echo "
    ▄▄▄▄▀▀▀▀▀▀▀▀▄▄▄▄▄▄
    █░░░░▒▒▒▒▒▒▒▒▒▒▒▒░░▀▀▄
   █░░░▒▒▒▒▒▒░░░░░░░░▒▒▒░░█
  █░░░░░░▄██▀▄▄░░░░░▄▄▄░░░█
 ▀▒▄▄▄▒░█▀▀▀▀▄▄█░░░██▄▄█░░░█
█▒█▒▄░▀▄▄▄▀░░░░░░░░█░░░▒▒▒▒▒█
█▒█░█▀▄▄░░░░░█▀░░░░▀▄░░▄▀▀▀▄▒█
 █▀▄░█▄░█▀▄▄░▀░▀▀░▄▄▀░░░░█░░█
  █░░▀▄▀█▄▄░█▀▀▀▄▄▄▄▀▀█▀██░█
   █░░██░░▀█▄▄▄█▄▄█▄████░█
    █░░░▀▀▄░█░░░█░███████░█
     ▀▄░░░▀▀▄▄▄█▄█▄█▄█▄▀░░█
       ▀▄▄░▒▒▒▒░░░░░░░░░░█
          ▀▀▄▄░▒▒▒▒▒▒▒▒▒▒░█
              ▀▄▄▄▄▄░░░░░█
              "
