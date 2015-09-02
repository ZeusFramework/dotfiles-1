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

export PATH='/Users/mgechev/.rvm/gems/ruby-1.9.2-p320/bin:/Users/mgechev/.rvm/gems/ruby-1.9.2-p320@global/bin:/Users/mgechev/.rvm/rubies/ruby-1.9.2-p320/bin:/Users/mgechev/.rvm/bin:/Users/mgechev/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Applications/apache-ant-1.9.2/bin/:/Users/mgechev/Development/android/sdk/tools/:/Users/mgechev/Development/android/sdk/platform-tools/'

export PATH=${PATH}:/Development/android-sdk-macosx/platform-tools:/Development/android-sdk-macosx/tools

export ANDROID_HOME=/Users/mgechev/Development/android/sdk

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

rvm use 2.0.0 &> /dev/null

[ -s "/Users/mgechev/.nvm/nvm.sh" ] && . "/Users/mgechev/.nvm/nvm.sh" # This loads nvm

##
# Your previous /Users/mgechev/.bash_profile file was backed up as /Users/mgechev/.bash_profile.macports-saved_2014-09-12_at_16:26:30
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


