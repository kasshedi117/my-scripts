tmux send-keys -t $(basename $(dirname $1)):1 "C-c" 
sleep 1
tmux send-keys -t $(basename $(dirname $1)):1 "cd $1 && npm install && npm start" Enter
