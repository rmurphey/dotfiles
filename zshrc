# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby)

source $ZSH/oh-my-zsh.sh

export PATH=/Users/rmurphey/.gem/ruby/1.8/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/sbin:/usr/local/bin:$PATH
export PATH=$PATH:/Developer/SDKs/android-sdk-mac_x86/tools
export PATH=$PATH:/Developer/SDKs/android-sdk-mac_x86/platform-tools
export PATH=$PATH:/usr/local/phonegap-android/bin





# Customize to your needs...
export PATH=/Users/rmurphey/.gem/ruby/1.8/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/sbin:/usr/local/bin:$PATH
# export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:$PATH
# export PATH=/Users/rmurphey/.rvm/gems/ruby-1.9.2-p0/bin
# export PATH=/Users/rmurphey/.rvm/gems/ruby-1.9.2-p0@global/bin
# export PATH=/Users/rmurphey/.rvm/rubies/ruby-1.9.2-p0/bin
# export PATH=$PATH:/Users/rmurphey/.rvm/bin

# toura
export PATH=$PATH:/usr/local/bin/android-sdk-mac_x86/tools
export PATH=$PATH:/usr/local/phonegap-android/bin
export PATH=$PATH:/usr/local/depot_tools
export PATH=$PATH:/Users/rmurphey/projects/toura_map/mulberry/bin

export NODE_PATH=/usr/local/lib/node:$NODE_PATH

#test -r /sw/bin/init.sh && . /sw/bin/init.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
