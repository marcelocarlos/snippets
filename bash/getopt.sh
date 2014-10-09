# a and arga have no arguments
# b and argb have one mandatory argument
# c and argc have on optional argument -- IMKPORTANT: optional arguments only
#   accepts args in the format --argc='my value' or -c'my value', otherwise it
#   will fallback to an empty value
#------------------------------------------------------------------------------
# Variables
#------------------------------------------------------------------------------
SCRIPT_NAME="$(basename "$0")"
FLAG_A='some value' # since 'a' is a flag, you'll probably need to set an initial value

#------------------------------------------------------------------------------
# Parameters processing
#------------------------------------------------------------------------------
# read the options
GETOPT_STR=`getopt -o ab:c:: --long arga,argb:,argc:: -n $SCRIPT_NAME -- "$@"`

if [ $? != 0 ] ; then
    echo "Invalid syntax - see usage";
    exit 1 ;
fi

eval set -- "$GETOPT_STR"

# extract options and their arguments into variables.
while true ; do
    case "$1" in
        -a|--arga)
                echo "Option A - noargs"
                shift ;;
        -b|--argb)
                echo "Option B - arg $2"
                shift 2 ;;
        -c|--argc)
            case "$2" in
                "")
                    echo "Option C - no arg, using some default value"
                    shift 2 ;;
                *)
                    echo "Option C - arg $2"
                    shift 2 ;;
            esac ;;
        --)
            shift ;
            break ;;
        *)
            echo "Error!" ;
            exit 1 ;;
    esac
done

echo "Remaining positional arguments:"
for arg do
    echo "  - Arg: $arg"
done
