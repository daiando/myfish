# encoding
set -x LANG ja_JP.UTF-8

# HOME 
set HOME /Users/daiando

# Basic PATH 
set PATH /usr/local/bin /usr/sbin /usr/bin /bin

# GO
set GOPATH $HOME/work/mygo
set PATH $GOPATH/bin $PATH

# peco
bind \cr ghq-search 
bind \ce 'peco_select_history (commandline -b)'

