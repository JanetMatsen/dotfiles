# Python
source /usr/local/bin/virtualenvwrapper.sh

# Variables
export PATH="$PATH:$HOME/bin"

# Prompt 
PS1='\h:\W`__git_ps1` \u\$ '

# Aliases
alias ll='ls -l'
alias lsa='ls -A'
alias lsg='ls | grep'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# [[ -s ~/.bashrc ]] && source ~/.bashrc

echo $OS_TYPE | grep darwin && {
    # Put mac-specific things here.
    echo "welcome to Mac"
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
