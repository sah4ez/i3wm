#!/bin/bash

CUR=$(cat $HOME/.i3/active_keyboard_layout)

if [ "$CUR" = "ru" ]
then
  echo "en" > $HOME/.i3/active_keyboard_layout
else
  echo "ru" > $HOME/.i3/active_keyboard_layout
fi
