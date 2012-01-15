# My aliases
alias easy_off='sudo kextunload -v /System/Library/Extensions/EasyTetherUSBEthernet.kext'

alias c='bundle exec cucumber'
alias s='bundle exec rspec'
alias redis= 'redis-server > /Users/jlsuttles/redis.log &'
alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | 
   cut -d\   -f2"

# reloads passenger and pow
function reload! () {
  touch tmp/restart.txt
}

# better than rm -rf
function trash () {
  mv $* ~/.Trash
}

function current_working_project {
  pwd > ~/bin/config/current_project_path
}

function :w () {
  echo "Ugh. You're not in vim, and your shits all retarded"
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
