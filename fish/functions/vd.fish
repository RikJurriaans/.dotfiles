# TODO: create some helper functions to simplify code.
# . tmux_helpers.fish

function vd
  tmux new -s vd_env -d

  tmux send-keys -t vd_env "cd ~/Projects/vakantie_discounter" C-m
  tmux send-keys -t vd_env "emax" C-m

  tmux new-window -n vd_run -t vd_env
  tmux send-keys -t vd_run "cd ~/Projects/vakantie_discounter" C-m
  tmux send-keys -t vd_run "make run" C-m

  tmux new-window -n vd_terminal -t vd_env
  tmux send-keys -t vd_terminal "cd ~/Projects/vakantie_discounter" C-m

  tmux attach -t vd_env
end
