#!/bin/bash

# For each line FOO received on STDIN, evaluate FOO.
while read LINE
do
	eval "$LINE"
done
