BASH Aliases file that checks for `dnf/apt`, `exa`, and `bat` on the system, then sets aliases based on their presence.
<br />
<br />
<br />
The file will set the following aliases:

`update` - Updates the system (Currently compatible with `dnf` and `apt` only.).

`ls` - If `exa` is available on the system, `ls` will default to using `exa`. Changes `ls` to list directories first (`ls --group-directories-first`).

`la` - Changes `la` alias, default alias on many distros, to be compatible with `exa`.

`ll` - Changes `ll` alias, default alias on many distros, to be compatible with `exa`.

`cat` - If `bat` exists on the file in the form of `batcat` or `bat`, `cat` will use `bat` instead. 

`nano` - Adds line numbers to `nano` by default (`nano --linenumbers`).
