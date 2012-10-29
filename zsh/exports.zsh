export MANPATH=/opt/local/share/man:$MANPATH
export CDPATH=~/projects:~/
export RUBYOPT='rubygems'
export GREP_OPTIONS='--color=auto' 
export GREP_COLOR='3;33'
export EDITOR='subl -w'
export TERM=xterm-color
export LSCOLORS=gxfxcxdxbxegedabagacad
export CLICOLOR=1
export PROJECTS=$HOME/projects
export NODE_PATH=/usr/local/lib/node

export CLICOLOR=1 # turns on colors
export LSCOLORS=gxfxcxdxbxegedabagacad
export TERM=xterm-color

export GREP_COLOR='3;33'
export GREP_OPTIONS='--color=auto' 

export RUBYOPT='rubygems' # Ruby always requires rubygems

export TODOTXT_DEFAULT_ACTION=ls

# rbenv Installation - if we have rbenv installed.
if (( $+commands[rbenv] )) ; then
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
fi

