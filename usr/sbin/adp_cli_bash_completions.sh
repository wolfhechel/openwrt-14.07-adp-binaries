#!/bin/bash



_adp_cli() 
{
    local cur prev opts base
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    opts=`./adp_cli completions ${COMP_WORDS[*]}`


   COMPREPLY=($(compgen -W "${opts}" -- ${cur}))  
   return 0
}
complete -F _adp_cli adp_cli
