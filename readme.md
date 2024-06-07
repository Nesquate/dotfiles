# Nesquate's Dotfiles
Self use, but you can also use that if you want.

## Requirements
- Debian 12
- Set SSH & GPG

## Restore to other computer

First clone this repository as bare:
```shell
git clone --bare git@github.com:Nesquate/dotfiles.git $HOME/.dotfiles
```

Then, create alias command (temporarily) for new computer:
```shell
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
```

Finally, checkout this and configure local repository:
```shell
dotfiles checkout -f
dotfiles config --local status.showUntrackedFiles no
```

If you want to apply dotfiles' setting immediately, just re-run `bash`:
```shell
exec bash
```

**You should use `dotfiles` command to manage dotfiles.**
