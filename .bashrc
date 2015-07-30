[ -n "$PS1" ] && source ~/.bash_profile

eval "$(direnv hook bash)"

if [ -f /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi


export NVM_DIR="/Users/mgechev/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
