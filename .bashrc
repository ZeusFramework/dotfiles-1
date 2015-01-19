[ -n "$PS1" ] && source ~/.bash_profile

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

eval "$(direnv hook bash)"

export PATH=/usr/texbin:$PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export GOPATH="$HOME/Projects/"

if [ -f /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi

tmux
