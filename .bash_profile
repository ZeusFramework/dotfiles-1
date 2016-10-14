# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,custom_aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null
done

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

export PATH='~/.rvm/gems/ruby-1.9.2-p320/bin:~/.rvm/gems/ruby-1.9.2-p320@global/bin:~/.rvm/rubies/ruby-1.9.2-p320/bin:~/.rvm/bin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Applications/apache-ant-1.9.2/bin/:~/Development/android/sdk/tools/:~/Development/android/sdk/platform-tools/'

export PATH=${PATH}:/Development/android-sdk-macosx/platform-tools:/Development/android-sdk-macosx/tools

export ANDROID_HOME=~/Development/android/sdk

# Fix for neovim and C+h
export TERMINFO="$HOME/.terminfo"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

rvm use 2.0.0 &> /dev/null

[ -s "~/.nvm/nvm.sh" ] && . "~/.nvm/nvm.sh" # This loads nvm

##
# Your previous ~/.bash_profile file was backed up as ~/.bash_profile.macports-saved_2014-09-12_at_16:26:30
##

# MacPorts Installer addition on 2014-09-12_at_16:26:30: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=$GOPATH/bin:$PATH
# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"
export PATH=$PATH:/usr/local/git/bin
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=/usr/texbin:$PATH
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:/usr/local/git/bin
export GOPATH="$HOME/Projects/"

export DARTIUM_BIN="/usr/local/opt/dart/Chromium.app"
export DART_SDK="/usr/local/opt/dart/libexec"
export PATH="$PATH:$DART_SDK/bin"
export PATH=/usr/local/git/bin:/usr/local/bin:/usr/local/sbin:/usr/texbin:/usr/local/heroku/bin:~/bin:/bin:/opt/local/bin:/opt/local/sbin:~/.rvm/gems/ruby-2.0.0-p576/bin:~/.rvm/gems/ruby-2.0.0-p576@global/bin:~/.rvm/rubies/ruby-2.0.0-p576/bin:~/.rvm/bin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Applications/apache-ant-1.9.2/bin:~/Development/android/sdk/tools:~/Development/android/sdk/platform-tools/:/Development/android-sdk-macosx/platform-tools:/Development/android-sdk-macosx/tools:/usr/local/git/bin:~/.rvm/bin:/usr/local/git/bin:/usr/local/opt/dart/libexec/bin:/Applications/Julia-0.6.app/Contents/Resources/julia/bin

export PATH="$HOME/.node/bin:$PATH"

export PATH="$PATH:$HOME/.npm-packages/bin";
export ANDROID_HOME="/usr/local/Cellar/android-sdk/24.4/"
export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'

###-tns-completion-start-###
if [ -f ~/.tnsrc ]; then
    source ~/.tnsrc
fi
###-tns-completion-end-###
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

