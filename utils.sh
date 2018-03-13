
# colors!
RED='\033[00;31m'
GREEN='\033[00;32m'
YELLOW='\033[00;33m'
BLUE='\033[00;34m'
PURPLE='\033[00;35m'
CYAN='\033[00;36m'
LIGHTGRAY='\033[00;37m'

LRED='\033[01;31m'
LGREEN='\033[01;32m'
LYELLOW='\033[01;33m'
LBLUE='\033[01;34m'
LPURPLE='\033[01;35m'
LCYAN='\033[01;36m'
WHITE='\033[01;37m'

COLOR_OFF='\033[0m'

function echo-color() {
    echo -e "$1$2$COLOR_OFF"
}

function echo-green() {
    echo-color $GREEN $1
}

function echo-yellow() {
    echo-color $YELLOW $1
}

function echo-red() {
    echo-color $RED $1
}

function announce() {
    echo-green "******************************************"
    echo-yellow "    $1"
    echo-green "******************************************"
}

# $1: the command to test for existence
function command_exists() {
    if hash $1 2>/dev/null; then
        echo 1
     else
        echo 0
    fi
}

# $1: The file in question 
# $2: The text to check for
function file_contains() {
    if grep -q -F "$2" "$1"; then
        echo 1
    else 
        echo 0
    fi
}

# Appends to the given file if it doesn't exist and doesn't already contain $3..
# $1: The file
# $2: The first line to append
# #3: The second line to append (no append will happen if this argument is already present in $1)
function maybe_append() {
    if [ -f "$1" ]; then 
        if [ $(file_contains "$1" "$3") == "0"  ]; then 
            echo -e "\n$2\n$3\n" >> "$1"
            echo "Appended '$3' to $1"
        else 
            echo "$1 already contained '$3'"
        fi
    else
        echo "Did not append '$3' to $1 because it did not exist"
    fi 
    
}



