
Recommended installation instructions:

Just go ahead and swap `ESC` and `CAPSLOCK` now. 

```
cd ~
git clone https://github.com/dlurton/dotfiles.git
cd dotfiles
./setup-<OS / distro>
./basic-setup
```
Log out and log back in.  Opening a terminal should start `zsh` with the custom theme.  Then:

```
cd ~/dotfiles
./setup-vim
```


Open `vim` and execute `:PlugInstall` to install the plugins.

```
./setup-ocaml
./setup-spacemacs
```

Open emacs and let it download all the plugins.


