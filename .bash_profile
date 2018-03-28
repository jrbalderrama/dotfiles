# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

## pyenv configuration (install : scripts/pyenv.sh)
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

## autojump Debian configuration (install: apt-get)
if [ -f /usr/share/autojump/autojump.sh ]; then
    source /usr/share/autojump/autojump.sh
fi

## "readline" init options see defaults with 'bind -V' (and -v)
#
bind 'set blink-matching-paren on'
# turn off bell audio
bind 'set bell-style visible'
# tab completion case insensitive
bind 'set completion-ignore-case on'
# complete - and _ indistinctly
bind 'set completion-map-case on'
#
bind 'set enable-keypad on'
#
bind 'set mark-symlinked-directories on'
# Show all autocomplete results at once
bind 'set page-completions off'
bind 'set skip-completed-text on'
# auto complete with a single <TAB> instead of default two
bind 'set show-all-if-ambiguous on'
# allow UTF-8 instead of showing stuff like $'\0123\0456'
bind 'set input-meta on'
bind 'set output-meta on'
bind 'set convert-meta off'
