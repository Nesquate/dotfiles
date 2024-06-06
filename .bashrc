# Alias

## dotfiles
## https://wiki.archlinux.org/title/Dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# Completion

## Fix dotfiles command doesn't have completions.
source /usr/share/bash-completion/completions/git
__git_complete dotfiles __git_main


#----------------------------

# Modify prompt

## Parse git branch
## https://coderwall.com/p/fasnya/add-git-branch-name-to-bash-prompt

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\e[4;30;43m\](\D{%Y/%m/%d} \t)\[\e[m\] \[\e[0;36m\]\u\[\e[m\] in \w\[\e[0;33m\]\$(parse_git_branch)\[\e[m\] \$ "

#-----------------------------

# GPG
## Fix sign commit problem
export GPG_TTY=$(tty)

# Load asdf

if [ -f /opt/asdf-vm/asdf.sh ]; then
     . /opt/asdf-vm/asdf.sh
#      export PATH="/home/nesquate/.asdf/shims:/opt/asdf-vm/bin:${PATH}"

     # Import Hugo bash completion after loading asdf-vm
     source "$HOME/.bash-completion/hugo.bash"

     # Load Flutter after loading asdf-vm
     export FLUTTER_ROOT="$(asdf where flutter)"
     export CHROME_EXECUTABLE=$(which google-chrome-stable)

     # Load Dotnet after loading asdf-vm
     export DOTNET_ROOT="$(asdf where dotnet)"
fi

# Add Android Platform Tools to path
if [ -d /opt/android-sdk/platform-tools ]; then
     export PATH="/opt/android-sdk/platform-tools:${PATH}"
fi


# Load user local bin folder
export PATH="/home/nesquate/bin:${PATH}"

# Load mc-image-helper

export PATH="/home/nesquate/bin/mc-image-helper/bin:${PATH}"
