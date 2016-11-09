# TODO: create some helper functions to simplify code.
# . tmux_helpers.fish

function trip
  tmux new -s trip_env -d

  # start up intelliJ.
  tmux send-keys -t trip_env "cd /opt/idea-IU-162.2032.8/bin" C-m
  tmux send-keys -t trip_env "./idea.sh" C-m

  # start make run.
  tmux new-window -n trip_run -t trip_env
  tmux send-keys -t trip_run "cd ~/Projects/tripapi" C-m
  tmux send-keys -t trip_run "make run" C-m

  # create a random terminal window to play in.
  tmux new-window -n trip_terminal -t trip_env
  tmux send-keys -t trip_terminal "cd ~/Projects/tripapi" C-m

  tmux attach -t trip_env
end
