# set default PATH

set -g USER (whoami)

if test $USER = "rikjur"
  set -g ELMAR true
end

set -gx PATH /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games /home/rikjur/.rbenv/shims /usr/local/go/bin

