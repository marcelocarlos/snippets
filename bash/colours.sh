# Reset
RESET_TEXT='\033[0m'      # Text Reset

# Regular Colors
BLACK='\033[0;30m'        # Black
RED='\033[0;31m'          # Red
GREEN='\033[0;32m'        # Green
YELLOW='\033[0;33m'       # Yellow
BLUE='\033[0;34m'         # Blue
PURPLE='\033[0;35m'       # Purple
CYAN='\033[0;36m'         # Cyan
WHITE='\033[0;37m'        # White

# Bold
BOLD_BLACK='\033[1;30m'   # Black
BOLD_RED='\033[1;31m'     # Red
BOLD_GREEN='\033[1;32m'   # Green
BOLD_YELLOW='\033[1;33m'  # Yellow
BOLD_BLUE='\033[1;34m'    # Blue
BOLD_PURPLE='\033[1;35m'  # Purple
BOLD_CYAN='\033[1;36m'    # Cyan
BOLD_WHITE='\033[1;37m'   # White

# Underline
UN_BLACK='\033[4;30m'     # Black
UN_RED='\033[4;31m'       # Red
UN_GREEN='\033[4;32m'     # Green
UN_YELLOW='\033[4;33m'    # Yellow
UN_BLUE='\033[4;34m'      # Blue
UN_PURPLE='\033[4;35m'    # Purple
UN_CYAN='\033[4;36m'      # Cyan
UN_WHITE='\033[4;37m'     # White
# Background
BG_BLACK='\033[40m'       # Black
BG_RED='\033[41m'         # Red
BG_GREEN='\033[42m'       # Green
BG_YELLOW='\033[43m'      # Yellow
BG_BLUE='\033[44m'        # Blue
BG_PURPLE='\033[45m'      # Purple
BG_CYAN='\033[46m'        # Cyan
BG_WHITE='\033[47m'       # White

# example
echo -e "${RED}RED${RESET_TEXT}"
echo -e "${BOLD_RED}BOLD_RED${RESET_TEXT}"
echo -e "${UN_RED}UN_RED${RESET_TEXT}"
echo -e "${BG_RED}BG_RED${RESET_TEXT}"
