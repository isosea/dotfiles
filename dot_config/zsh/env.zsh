export FZF_DEFAULT_OPTS="--reverse"
export EDITOR="code -w"
export STARSHIP_SHELL="zsh"

# 同じコマンドが連続する場合は1回だけ記録する & コマンドの頭にスペースを付けて実行すると記録しない
export HISTCONTROL="ignoreboth"

# xdg-ninja
# android
export ANDROID_USER_HOME="$XDG_DATA_HOME"/android
# aws-cli
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME"/aws/credentials
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME"/aws/config
# bash
export HISTFILE="${XDG_STATE_HOME}"/bash/history
# CocoaPods
export CP_HOME_DIR="$XDG_DATA_HOME"/cocoapods
# flyctl
export FLY_CONFIG_DIR="$XDG_STATE_HOME"/fly
# gem
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem
# go
export GOPATH="$XDG_DATA_HOME"/go
# gradle
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
# ipython
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"
# less
export LESSHISTFILE="$XDG_STATE_HOME"/less/history
# nodejs
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
# python-tensorflow
export KERAS_HOME="${XDG_STATE_HOME}/keras"
# ruby bulder
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle
# zsh
export HISTFILE="$XDG_STATE_HOME"/zsh/history
