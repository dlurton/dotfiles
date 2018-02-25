

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


