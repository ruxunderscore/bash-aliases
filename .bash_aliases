#!/bin/bash

# Set ls aliases & use exa if present
if hash exa 2>/dev/null; then
    # echo "Debug: exa present"
    alias ls='exa --group-directories-first'
else
    # echo "Denug: exa not present"
    alias ls='ls --group-directories-first'
fi

alias ll='ls -lFh'
alias la='ls -laFh'

# Run nano with line numbers
alias nano='nano --linenumbers'

# Create update alias based on which package manager is present. 
if hash apt 2>/dev/null; then
    # echo "Debug: apt present"
    alias update='sudo apt update && sudo apt full-upgrade -y'
else
    # echo "Debug: apt not present"
    if hash dnf 2>/dev/null; then
        # echo "Debug: dnf present"
        alias update='sudo dnf update -y'
    else
        # echo "Debug: dnf not preset"
    fi
fi

# Uncomment to set alias for cat to bat, for use of bat
if hash bat 2>/dev/null || hash batcat 2>/dev/null; then
    echo "Debug: bat or batcat present"
    if hash bat 2>/dev/null; then
        alias cat='bat'
        # echo "Debug: setting alias cat to run bat"
    else
        alias cat='batcat'
        # echo "Debug: setting alias cat to run batcat"
    fi
else
    # echo "bat or batcat no preset"
fi