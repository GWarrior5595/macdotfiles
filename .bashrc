
echo .bashrc loaded

source ~/.profile

# Don't check mail when opening terminal.
unset MAILCHECK

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='sexy'

# Load Bash It
source "$BASH_IT"/bash_it.sh
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"


#cli aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#  alert sleep 10
function alert(){
    start=$(date +%s)
    "$@"
    [ $(($(date +%s) - start)) -le 15 ] || notify-send "Notification" "Long\
 running command \"$(echo $@)\" took $(($(date +%s) - start)) seconds to finish"
}

