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
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:$PATH

# toura
export PATH=$PATH:/usr/local/bin/android-sdk-mac_x86/tools
export PATH=$PATH:/usr/local/phonegap-android/bin
export PATH=$PATH:/usr/local/depot_tools
export PATH=$PATH:/Users/rmurphey/projects/mulberry/cli/bin

export NODE_PATH=/usr/local/lib/node:$NODE_PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

alias be="bundle exec"
alias marked="open -a Marked"
export EDITOR='mvim -f --nomru -c "au VimLeave * !open -a iTerm"'
export CLICOLOR=1
