#!/bin/bash
PATH="$HOME/.local/bin:$PATH"
if [ $# -eq 0 ]
	then
            executable_content=`cat bridgy.sh`
            printf "put the following code in a file into your PATH"
            printf "$executable_content"
	else
	        export LANG=C.UTF-8
		exec "$@"
	fi
