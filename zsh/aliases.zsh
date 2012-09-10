# Run Cucumber
alias c='bundle exec cucumber'

# Run git status
alias s='git status'

# Run Behat
alias b='behat'

# Run PHPUnit
alias p='phpunit tests'

# Locate IP
alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | 
   cut -d\   -f2"

# Run todo.sh
alias td="echo && todo.sh | sort | sed '1d;\$d'"
alias d="todo.sh do"
alias a="todo.sh add"

# Run Punch.py
alias i="punch in"
alias o="punch out"
alias r="punch report"

# Reload .zshrc
function zr () {
  source $HOME/.zshrc
}

# cd to the default working directory set by current_working_project
function cwp {
  export wdir=`cat $HOME/bin/config/current_project_path`
  cd $wdir
}

# Better than rm -rf
function trash () {
  mv $* ~/.Trash
}

function this {
  pwd > ~/bin/config/current_project_path
  echo "Set current working project to `pwd`"
}

function internet {
  # count 3 packets
  # timeout 3 seconds
  # /dev/null unix devices that doesn't go anywhere
  # 1 is stdout, 2 is stderr, 2 follow 1
  if (ping -c 3 -t 3 google.com > /dev/null 2>&1)
  then
    echo 'yep'
  else
    echo 'nope'
  fi
}
