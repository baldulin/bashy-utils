#!/bin/bash

getvars(){
    printenv | sed -En "s/^([[:alnum:]_]+)=.*$/\1/p"
}

getfuncs(){
    typeset -f | sed -En "s/^([[:alnum:]_]+)[[:space:]]*\(\)[[:space:]]*$/\1/p"
}

getfunc(){
    typeset -f | sed -En "/^$1[[:space:]]*\(\)[[:space:]]*$/,/^\}[[:space:]]*$/p"
}

match(){
    local vars="$1"
    local reg=$(echo $vars | tr ' ' '\n' | awk '{print $0"|"}')
    
    grep -Eo "$reg" | sort | uniq
}

