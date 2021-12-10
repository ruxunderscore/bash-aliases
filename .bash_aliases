#!/bin/bash

# Set ls aliases & use exa if present
if hash exa 2>/dev/null; then
    alias ls='exa --group-directories-first'
else
    alias ls='ls --group-directories-first'
fi

alias ll='ls -lFh'
alias la='ls -laFh'

# Run nano with line numbers
alias nano='nano --linenumbers'

# Create update alias based on which package manager is present. 
if hash apt 2>/dev/null; then
    alias update='sudo apt update && sudo apt full-upgrade -y'
else
    if hash dnf 2>/dev/null; then
        alias update='sudo dnf update -y'
    fi
fi

# Uncomment to set alias for cat to bat, for use of bat
# if hash bat 2>/dev/null || hash batcat 2>/dev/null; then
#     if hash bat 2>/dev/null; then
#         alias cat='bat'
#     else
#         alias cat='batcat'
#     fi
# fi
