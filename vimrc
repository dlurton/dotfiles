set expandtab
set tabstop=4
set shiftwidth=4
syntax on

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

