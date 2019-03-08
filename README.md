
Recommended installation instructions:

Just go ahead and swap `ESC` and `CAPSLOCK` now. 

```
cd ~
git clone https://github.com/dlurton/dotfiles.git
cd dotfiles
./setup-<OS / distro>
./setup-symlinks-<os> --for-real
./basic-setup
```
`./basic-setup` will require you to enter your password twice and then start a child shell...
`exit` this,then: log out and log back in.  Opening a terminal should start `zsh` with the custom theme.  Then:

```
cd ~/dotfiles
./setup-vim
```

Enter `vim` and run the `PlugInstall` command.  Exit `vim`.

We want to setup ocaml first because it seems to be needed during the first load of Emacs.

```
./setup-ocaml
```

Might as well go ahead and setup rust too:

```
./setup-rust
```

```
./setup-spacemacs
(emacs&) 
```

Let spacemacs install its huge list of plugins, and while you're waiting:


Execute `~/dotfiles/generate-ssh-key` and let copy the generate public key to clipboard.  Add it to your github account.

Execute `~/dotfiles/set-dotfiles-remote-to-ssh`


