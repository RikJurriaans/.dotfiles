# TODO: create some helper functions to simplify code.
# . tmux_helpers.fish

function ogus753
  tmux new -s ogus_env -d

  tmux new-window -n emacs -t ogus_env
  tmux send-keys -t emacs "cd ~/Projects/exploration/Ogus753/" C-m
  tmux send-keys -t emacs "emax" C-m

  # start android avd.
  tmux new-window -n android_avd -t ogus_env
  tmux send-keys -t android_avd "android avd" C-m

  # start react-native
  tmux new-window -n react_native_start -t ogus_env
  tmux send-keys -t react_native_start "cd ~/Projects/exploration/Ogus753/" C-m
  tmux send-keys -t react_native_start "react-native start" C-m

  # start logging
  tmux new-window -n react_native_log_android -t ogus_env
  tmux send-keys -t react_native_log_android "cd ~/Projects/exploration/Ogus753/" C-m
  tmux send-keys -t react_native_log_android "react-native log-android" C-m

  tmux attach -t ogus_env
end
