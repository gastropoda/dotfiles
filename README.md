# Unix dotfiles

These are my generic unix dotfiles in a [homesick][1] compatible *castle*.

[1]: https://github.com/technicalpickles/homesick

# Bash

Doesn't do very much.

Host-specific config can be added as two files:

- `~/.bashrc.local_config` - sourced early, can be used to set variables affecting the rest of `.bashrc`
- `~/.bashrc.local` - sourced late, can use tools configured by the `.bashrc`

# Ack

Some [ack][] filetypes for web preprocessors and ruby development.

[ack]: http://beyondgrep.com/
