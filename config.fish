set -g fish_user_paths ~/bin ~/.gem/ruby/2.5.0/bin ~/.cargo/bin
set -x SSH_AUTH_SOCK /run/user/1000/gnupg/S.gpg-agent.ssh
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

alias py='python3'
alias numpy='ipython -i -c "from numpy import *;from numpy.linalg import *"'

alias vi=vim
alias ed='rlwrap ed -p " * " -v' # ED IS THE STANDARD TEXT EDITOR
alias tm='tmux attach; or tmux'
alias todo='vim ~/todo'
alias note='vim ~/note'
alias c='xsel -b'
alias lcal='cat ~/doc/lcal2018'
alias jserve='bundle exec jekyll serve'
alias rsbook='rustup doc --book'
alias rsref='rustup doc --reference'
alias rsstd='rustup doc --std'

function gitup
  git init
  git add -A
  git commit -m "initial commit"
  git remote add origin $argv[1]
  git push -u origin master
end


