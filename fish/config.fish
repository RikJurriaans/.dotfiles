. ~/.config/fish/env.fish
. ~/.config/fish/aliases.fish

if test $ELMAR
  echo "Welcome at Elmar"
  . ~/.config/fish/elmar_aliases.fish
end

if test $TERM != "screen-256color"
	set -gx TERM xterm-256color
end

if test (which rbenv 2>/dev/null)
  status --is-interactive; and . (rbenv init -|psub)
end

tmux_attach
or tmux_new_session
or echo "tmux failed to start; using plain fish shell"

set -g fish_key_bindings fish_vi_key_bindings

set fish_bind_mode insert

set -U EDITOR emacs

