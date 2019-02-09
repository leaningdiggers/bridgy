#!/bin/bash
PATH="$HOME/.local/bin:$PATH"
if [ $# -eq 0 ]
	then
		exec bridgy --help
	else
	        export LANG=C.UTF-8 
		exec "$@"
	fi
