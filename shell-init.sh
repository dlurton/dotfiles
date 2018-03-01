 . /home/dave/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

PATH=$PATH:~/dotfiles

export OPAMKEEPBUILDDIR=yes
export OCAMLPARAM="_,bin-annot=1"

# use this to print the last command
function get-last-cmd() {
    fc -ln "$1" "$1" | sed '1s/^[[:space:]]*//'
}

function save-last-cmd() {
    if [ $# -lt 1 ]; then
        echo "To what file do you want to save the command as?"
    else
        echo "#!/bin/sh -e" > $1
        get-last-cmd >> $1
        chmod u+x $1
    fi
}
