#!/bin/bash
#This is intended to be used as a action of sourcetree
echo "$1"
cd $1
/usr/bin/git reset --soft HEAD^