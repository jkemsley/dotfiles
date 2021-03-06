[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

autoload -U compinit && compinit
autoload -U zmv
autoload colors && colors

source ~/.zsh/exports.zsh
source ~/.zsh/path.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/history.zsh
source ~/.zsh/set_options.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/completion_rake.zsh

if [ -e ~/.local.zsh ]; then
	source ~/.local.zsh
fi

# Disable Boxen for the moment.
#source /opt/boxen/env.sh
