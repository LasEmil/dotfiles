
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[ -s "/Users/emillaskowski/.jabba/jabba.sh" ] && source "/Users/emillaskowski/.jabba/jabba.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# tab multiplexer configuration: https://github.com/austinjones/tab-rs/
source "/Users/emillaskowski/Library/Application Support/tab/completion/tab.bash"
# end tab configuration

