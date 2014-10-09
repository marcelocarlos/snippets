#------------------------------------------------------------------------------
# Parameters processing
#------------------------------------------------------------------------------
while getopts "vhf:" OPTION
do
    case $OPTION in
        v)
            echo "Version"
            exit 0
            ;;
        h)
            echo "Help" # call function usage()
            exit 0
            ;;
        f)
            echo "option f selected with parameter $OPTARG"
            ;;
        ?)
            echo "Invalid param" # call function usage()
            exit 1
            ;;
    esac
done

# shift all processed options away, so it brings the positional parameters to the correct position
shift $((OPTIND-1))
