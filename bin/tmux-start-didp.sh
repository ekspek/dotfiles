#!/bin/sh

cd $DIDP/gui
SESSION=DIDP

tmux new-session -d -s "$SESSION" -n "DCApp"


# Application IDE window
tmux split-window -h -t "$SESSION:DCApp.1"
tmux split-window -v -p 15 -t "$SESSION:DCApp.2"
tmux split-window -h -l 35 -t "$SESSION:DCApp.3"

tmux send-keys -t "$SESSION:DCApp.1" "nvim DCApp.py" Enter
tmux send-keys -t "$SESSION:DCApp.2" "nvim DCApp/netif.py" Enter
#tmux send-keys -t "$SESSION:DCApp.3" "gui" Enter
tmux clock-mode -t "$SESSION:DCApp.4"


# Stubs window
tmux new-window -n "Testbench"

tmux split-window -v
tmux split-window -v
tmux split-window -v -t "$SESSION:Testbench.1"

#for _pane in $(tmux list-panes -t "$SESSION:Testbench" -F '#P'); do
	#tmux split-window -h -t ${_pane}
#done

for i in $(seq 4 -1 1); do
	tmux split-window -h -t "$SESSION:Testbench.$i"
done

tmux set-window-option -t "$SESSION:Testbench" synchronize-panes on
tmux send-keys -t "$SESSION:Testbench.1" "python3 DAApp_stub.py" Enter


tmux attach -t "$SESSION:DCApp.1"
