#!/bin/bash

_table() 
{
    local cur prev opts
    COMPREPLY=()

    # First Command
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="-0 -1 -2 -3 -4 -C -V -H -X -T -h"

	case "$prev" in
	"-T") opts="" ;;
    "-X") opts="" ;;
    "-C") opts="";;
    "-V") opts="" ;;
    "-H") opts="" ;;
	esac

	COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
	return 0
}

complete -F _table table
