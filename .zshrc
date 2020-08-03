# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme gallifrey

# Tell Antigen that you're done.
antigen apply

# Add the J-created bin dir to path
export PATH=~/bin/:$PATH

# BWA for ZWork
export PATH=$PATH:~/software/bwa-0.7.5a
#export PATH=$PATH:~/software/samtools-1.5  # didn't work
export PATH=$PATH:~/software/samtools-0.1.19
export PATH=$PATH:~/software

# Source passwords and such.
source ~/.zymergen

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jmatsen/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jmatsen/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jmatsen/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jmatsen/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

