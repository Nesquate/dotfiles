# Alias

## dotfiles
## https://wiki.archlinux.org/title/Dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

### Fix dotfiles command doesn't have completions.
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

# Load asdf

. /opt/asdf-vm/asdf.sh
export PATH=/home/nesquate/.local/bin:/home/nesquate/.asdf/shims:/opt/asdf-vm/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/var/lib/flatpak/exports/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

# Flutter
export FLUTTER_ROOT="$(asdf where flutter)"
export CHROME_EXECUTABLE=$(which google-chrome-stable)
