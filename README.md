# new mac

```bash
git clone https://github.com/ytyubox/.dotfiles.git ./.dotfiles
alias dgit='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'
dgit reset --hard
```
Please note that any files that exist in your home directory will be overwritten by the files from your repository if they’re present.

