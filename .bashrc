# Python
source /usr/local/bin/virtualenvwrapper.sh

# Variables
export PATH="$PATH:$HOME/bin"

# Functions
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

# Prompt 
PS1='\h:\W$(parse_git_branch) \u\$ '

# Aliases
alias ll='ls -l'
alias lsa='ls -A'
alias lsg='ls | grep'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# [[ -s ~/.bashrc ]] && source ~/.bashrc

echo $OSTYPE | grep darwin > /dev/null && {
    # Put mac-specific things here.
    source ~/.iterm2_shell_integration.`basename $SHELL`
    source /usr/local/git/contrib/completion/git-completion.bash

    # Setting PATH for Python 3.5
    # The orginal version is saved in .bash_profile.pysave
    PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
    export PATH

    # added by Miniconda3 3.19.0 installer
    export PATH="/Users/janet/miniconda3/bin:$PATH"

    test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
}

export HISTSIZE=5000
export HISTFILESIZE=5000
