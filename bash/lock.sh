#------------------------------------------------------------------------------
# Variables
#------------------------------------------------------------------------------
SCRIPT_NAME=$(basename "$0")

LOCKFILE=/tmp/${SCRIPT_NAME}.lock # usually /var/lock/${SCRIPT_NAME}.lock
LOCK_WAIT_PARAM='-w 10' # 10 sec; set to '-n' to exit imediatelly
LOCK_FD=200

#------------------------------------------------------------------------------
# Functions
#------------------------------------------------------------------------------
function lock_get() {
    # create lock file
    eval "exec $LOCK_FD>$LOCKFILE"
    # write pid to file
    echo $$ 1>&$LOCK_FD
    # lock
    flock -x $LOCK_WAIT_PARAM $LOCK_FD && return 0 || return 1
}

function lock_fail() {
    echo "Script locked - skipping run"
    exit 1
}

# tries to lock, otherwise fails
lock_get || lock_fail
echo "Running ..."
