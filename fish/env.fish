set -gx SPARK_HOME /opt/spark-1.6.1
set -gx ANDROID_HOME ~/Android/Sdk
set -gx ALTERNATE_EDITOR ""
set -gx EDITOR emacsclient -t
set -gx VISUAL emacsclient -c -a emacs

# set default PATH
set -gx PATH /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /usr/bin/activator/bin /sbin /bin /usr/games /usr/local/games /home/rikjur/.rbenv/shims /usr/local/go/bin $ANDROID_HOME\/tools


