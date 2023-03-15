
# Open file in nvim with fzf 
fo() {
  IFS=$'\n' out=("$(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e)")
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-vim} "$file"
  fi 
}

alias n="nvim"

alias ozc="nvim ~/.zshrc"
alias otc="nvim ~/.tmux.conf"
alias onc="nvim ~/.config/nvim/init.vim"

# tmux aliases
alias tls="tmux ls"
alias ta="tmux attach -t"
alias tn="tmux new -t"
alias tk="tmux kill-session -t"

alias rgf='rg --files | rg'
