# Find out what these lines are all about
export DISPLAY=:0

st -e tmux &
disown

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
