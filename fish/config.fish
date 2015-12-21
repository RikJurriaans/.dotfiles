. ~/.config/fish/aliases.fish

# set default PATH
set -gx PATH /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games /home/rikjur/.rbenv/shims

if test $TERM != "screen-256color"
	set -gx TERM xterm-256color
end

if test (which rbenv 2>/dev/null)
  status --is-interactive; and . (rbenv init -|psub)
end

fish_vi_mode

set -g fish_bind_mode insert
