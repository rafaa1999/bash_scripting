#!/bin/bash

LEN=$1

usage(){

    echo "make a random pssword"
    echo "use:$0 <LENGTH>"
    exit 0

}


randPass(){

    tr -dc  "A-Za-Z0-9_#$%&()[]+-" < /dev/urandom  | head -c $LEN | xargs
}


if [ -n "$LEN"]

    then
        randPass
    else
        usage
fi
