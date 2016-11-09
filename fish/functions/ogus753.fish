function start_android_avd
  android avd
end

function ogus753
  cd ~/Projects/exploration/Ogus753

  tmux new-window
  tmux rename-window "avd"
  start_android_avd

  tmux new-window
  tmux rename-window "react-native-start"
  tmux switch-pane "react-native-start"
  react-native start
end
