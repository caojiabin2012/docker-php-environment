#!bin/bash

function run_cmd() {
    local t=`date`
    echo "$t: $1"
    eval $1
}

function list_contains() {
    local var="$1"
    local str="$2"
    local val

    eval "val=\" \${$var} \""
    [ "${val%% $str *}" != "$val" ]
}
