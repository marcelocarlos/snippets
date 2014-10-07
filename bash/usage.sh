#------------------------------------------------------------------------------
# Variables
#------------------------------------------------------------------------------
SCRIPT_NAME="$(basename "$0")"

#------------------------------------------------------------------------------
# Functions
#------------------------------------------------------------------------------
function usage() {
    cat << EOF
Usage: $SCRIPT_NAME [options] positionalparameter1

$SCRIPT_NAME short description

Options:
    -f  xxxx    description of the parameter
    -h          show this menu
    -v          show version

Example:
    Run the app doing x, y and bla.

    $SCRIPT_NAME  -d -f file.txt pos1

EOF
}

usage
