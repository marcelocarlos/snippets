#------------------------------------------------------------------------------
# Variables
#------------------------------------------------------------------------------
TOTAL_PARAMS_REQUIRED=1

#------------------------------------------------------------------------------
# CODE - check for number of parameters
#------------------------------------------------------------------------------
if [ $# -ne "${TOTAL_PARAMS_REQUIRED}" ]; then
    echo "Invalid number of params" # it should call an usage() function
    exit 1;
else
    echo "Param is: ${1}"
fi
