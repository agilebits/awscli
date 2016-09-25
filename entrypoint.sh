#! /bin/bash

if [ $# -eq 0 ]; then
	/bin/bash --login
else
	/usr/bin/aws "$@"
fi