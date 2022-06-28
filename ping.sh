#!/bin/bash

ping -w 1s -c 1 1.1.1.1  | grep "time=" | awk -F "time=" '{print $2}' | head -n1 | sed 's/ ms//g'
