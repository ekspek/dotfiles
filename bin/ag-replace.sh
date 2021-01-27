#!/bin/sh

ag -l $1 | xargs -I FILE sed -i "s/$1/$2/g" FILE
echo "Replaced all instances of $1 with $2"
