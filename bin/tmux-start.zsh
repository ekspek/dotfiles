cd ~/didp/didp_svn

tmux new-session -d -s DIDP

tmux new-window -t DIDP:1
tmux split-window -t DIDP:1
