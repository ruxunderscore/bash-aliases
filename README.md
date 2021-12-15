## About
BASH Aliases file that checks for `dnf/apt`, `exa`, and `bat` on the system, then sets aliases based on their presence.
\
\
\
The file will set the following aliases:\
\
`update` - Updates the system (Currently compatible with `dnf` and `apt` only.).\
`ls` - If `exa` is available on the system, `ls` will default to using `exa`. Changes `ls` to list directories first (`ls --group-directories-first`).\
`la` - Changes `la` alias, default alias on many distros, to be compatible with `exa`.\
`ll` - Changes `ll` alias, default alias on many distros, to be compatible with `exa`.\
`cat` - If `bat` exists on the file in the form of `batcat` or `bat`, `cat` will use `bat` instead. (Disabled, by default)\
`nano` - Adds line numbers to `nano` by default (`nano --linenumbers`).\

## Compatibility
I have tested this in `ZSH` and `BASH`. This file can be loaded into `ZSH` or `BASH` with no changes. 

## Information
`exa` is an alternative to the ls command with a more modern approach. More information about it can be found [here](https://github.com/ogham/exa).\
`bat` is an alternative to cat that provides line numbers and syntax highlighting. More information about it can be found [here](https://github.com/sharkdp/bat).

## Suggestions
If you have any other ideas for aliases, or recommendations, let me know, and I can add it. 
