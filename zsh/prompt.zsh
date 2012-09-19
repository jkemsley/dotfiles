git_branch() {
  echo $(/usr/bin/git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  st=$(/usr/bin/git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
    echo ""
  else
    if [[ $st == "nothing to commit (working directory clean)" ]]
    then
      echo "on %{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "on %{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
 ref=$(/usr/bin/git symbolic-ref HEAD 2>/dev/null) || return
 echo "${ref#refs/heads/}"
}

unpushed () {
  /usr/bin/git cherry -v origin/$(git_branch) 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " with %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}

# This keeps the number of todos always available the right hand side of my
# command line.
todo(){
  if $(which todo.sh &> /dev/null)
  then
    num=$(echo $(todo.sh ls | tail -n 1 | cut -d " " -f2 ))
    
    if [ $num != 0 ]
    then
      echo "$num"
    else
      echo ""
    fi
  else
    echo ""
  fi
}

# Check we have Punch.py installed and if so show current task.
current_task(){
  if $(which punch &> /dev/null); then
    if punch wh | grep -v 'No task is active.' &> /dev/null
      then
        echo "\n$(punch wh | cut -d ":" -f2 | sed 's/^[ \t]*//')"
        
    else
      echo ""
    fi
  else
    echo ""
  fi
}

user_name(){
	echo "%{$fg[magenta]%}%n%{$reset_color%}"
}

host_name(){
	echo "%{$fg[yellow]%}%m%{$reset_color%}"
}

directory_name(){
  echo "%{$fg_bold[cyan]%}${PWD/#$HOME/~}%{$reset_color%}"
}

set_prompt () {
  export PROMPT=$'\n$(user_name) at $(host_name) in $(directory_name) $(git_dirty)$(need_push)$(current_task)\n› ' 
  export RPROMPT="%{$fg_bold[gray]%}$(todo)%{$reset_color%}"
}

precmd() {
  set_prompt
}
