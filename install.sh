#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

bash_profile="$HOME/.bash_profile"
bash_profile_cmd="source $DIR/bash_profile"

bashrc="$HOME/.bashrc"
bashrc_cmd="source $DIR/bashrc"
bashrc_personal_cmd="source $DIR/bashrc_personal"

# if file not exist or cmd not in file, append the cmd (grep -q return 1 if not found)
if [ ! -f $bash_profile ] || grep -q $bash_profile_cmd $bash_profile ; then
  echo $bash_profile_cmd >> $bash_profile
fi

if [ ! -f $bashrc ] || grep -q $bashrc_cmd $bashrc ; then
  echo $bashrc_cmd >> $bashrc
fi

if [ ! -f $bashrc ] || grep -q $bashrc_personal_cmd $bashrc ; then
  if [ -f $DIR/bashrc_personal ] ; then
    echo $bashrc_personal_cmd >> $bashrc
  fi
fi


for filename in "vimrc" "gitconfig" "tmux.conf" ; do
  file="$HOME/.$filename"
  if [ -f $file ] ; then
    mv $file "$file.back"
  fi
  ln -s $DIR/$filename $file
done

if [ -x "$(command -v git)" ]; then
  git config --global user.name "$USER"
  git config --global user.email "$USER@$(hostname -s)"
fi
