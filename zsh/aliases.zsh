# Run Cucumber
alias c='bundle exec cucumber'

# Run RSpec
alias s='bundle exec rspec'

# Run Behat
alias b='behat'

# Run PHPUnit
alias p='phpunit'

# Locate IP
alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | 
   cut -d\   -f2"

# Run todo.sh
alias td="todo.sh"
alias d="todo.sh do"
alias a="todo.sh add"

# Reload .zshrc
function zr () {
  echo "Reloading .zshrc"
  source $HOME/.zshrc
}

# Reloads passenger and pow
function reload! () {
  touch tmp/restart.txt
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
