#------------------------------------------------------------------------------
# Parameters processing
#------------------------------------------------------------------------------
# Alternative way to process parameters.
while [ "$#" -gt 0 ]; do
    case $1 in
        -v )
            echo "Version"
            exit 0
            ;;
        -f | --file ) # expects an argument
            echo "option f selected with parameter $2"
            shift
            ;;
        -d )
            echo "switch d selected"
            ;;
        -h | --help )
            echo "option -h" # call function usage()
            exit 0
               ;;
        -* )
            echo
            echo "Invalid option: $1"
            # call function usage()
            exit 1
            ;;
        *)
            echo "Argument (param not-started by dash)"
            break;;
    esac
    shift
done
# Now, the positional parameter 1 will be in $1
