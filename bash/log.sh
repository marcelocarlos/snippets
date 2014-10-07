#------------------------------------------------------------------------------
# Variables
#------------------------------------------------------------------------------
DEBUG=1 # 0 to disable; 1 to enable
LOG_FILE="/tmp/test.log" # usually something like "/var/log/${SCRIPT_NAME}.log"

#------------------------------------------------------------------------------
# Functions
#------------------------------------------------------------------------------
function log_info() {
  entry="[$(date '+%F %T')] $*"
  if [ $DEBUG -eq 1 ]; then
    echo "$entry" | tee -a ${LOG_FILE}
  else
    echo "$entry" >> ${LOG_FILE}
  fi
}

log_info "log entry"
