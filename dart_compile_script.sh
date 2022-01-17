#!/bin/sh -l

# $1 is source file
# $2 is output executable, saved in volume /data, which is mounted to a volume on your host

my_console_output=$(dart compile exe $1 -o /data/$2 2>&1)
#TODO pass volume to output
echo "::set-output name=my_console_output::$my_console_output"
