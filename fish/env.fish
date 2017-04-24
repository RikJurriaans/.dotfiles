set -gx SPARK_HOME /opt/spark-1.6.1
set -gx ANDROID_HOME ~/Android/Sdk
set -gx ALTERNATE_EDITOR ""
set -gx EDITOR "emacsclient -t"

set -gx GOPATH ~/.go
set -gx GOBIN $GOPATH/bin

# set default PATH
set -gx PATH /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /home/rik/.rbenv/shims $ANDROID_HOME\/tools $GOBIN


