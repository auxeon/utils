# .bash_profile
 
# Get the aliases and functions 
if [ -f ~/.bashrc ]; 
    then 
    . ~/.bashrc 
fi 

# User specific environment and startup programs 
PATH=$PATH:$HOME/.local/bin:$HOME/bin:/opt/anaconda/3-5.0.0.1/bin/: 
export PATH 
export HISTSIZE=3000 

parse_git_branch() { 
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' 
} 
export PS1="[\e[0;36m`date`\e[m] \u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] \n$ " 

alias python3="/opt/anaconda/3-5.0.0.1/bin/python" 
alias python2="/opt/anaconda/2-4.3.1/bin/python"
