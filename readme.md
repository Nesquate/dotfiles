# Nesquate's Dotfiles
Self use, but you can also use that if you want.

## Requirement
- Arch Linux, or other distro base on Arch (e.g. EndeavourOS)
- `bash-completion` is installed
- asdf-vm via AUR helper (e.g. yay)
- Flutter via asdf-vm
- Hugo via asdf-vm
- Android Studio via Jetbrains Toolbox (via AUR helper)
- OpenSSH with SSH key installed
- GPG with GPG key installed

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
