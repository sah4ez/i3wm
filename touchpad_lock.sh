#!/bin/bash

value=$(xinput list-props 10 | grep 142 | awk '{print $4}')

if [[ ($value == 1) ]];
then
	xinput set-prop 10 142 0;
else
	xinput set-prop 10 142 1;
fi

value=$(xinput list-props 12 | grep 142 | awk '{print $4}')

if [[ ($value == 1) ]];
then
	xinput set-prop 12 142 0;
else
	xinput set-prop 12 142 1;
fi

