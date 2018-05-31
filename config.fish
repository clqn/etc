set -g fish_user_paths ~/bin
fish_vi_key_bindings

function fish_mode_prompt
  switch $fish_bind_mode
    case default
      set_color --bold red
      echo '• '
    case insert
      set_color --bold green
      echo '• '
    case replace_one
      set_color --bold blue
      echo '• '
    case visual
      set_color --bold brmagenta
      echo '• '
    case '*'
      set_color --bold red
      echo '? '
  end
  set_color normal
end

# aliases
alias ls=exa
alias ll='exa -l'
alias la='exa -a'
alias dl='mv -t ~/del'
alias rm='echo "please use dl instead to remove "'

alias py='python3'
alias numpy='ipython -i -c "from numpy import *;from numpy.linalg import *"'

alias vi=vim
alias ed='rlwrap ed -p " * " -v' # ED IS THE STANDARD TEXT EDITOR
alias tm='tmux attach; or tmux'
alias todo='vim ~/todo'
alias note='vim ~/note'
alias c='xsel -b'
