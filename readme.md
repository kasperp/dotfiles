# Kasper's dotfiles.


Forked of [Paul's dotfiles](https://github.com/paulirish/dotfiles/), forked of
[mathias's dotfiles](https://github.com/mathiasbynens/dotfiles/). go there instead.

This repo is mostly for me but you're welcome to make suggestions. Paul's or Mathias's are the projects to fork.

## install the neccessary apps

My basic setup is captured in `install-deps.sh` which adds homebrew, z, nave, etc.

## private config

Toss it into a file called `.extra` which you do not commit to this repo and just keep in your `~/`

I do something nice with my `PATH` there:

```shell
# PATH like a bawss
      PATH=/opt/local/bin
PATH=$PATH:/opt/local/sbin
PATH=$PATH:/bin
PATH=$PATH:~/.rvm/bin
# ...

export PATH

# git user setup
git config --global user.name "Me"
git config --global user.email "me@somewhere.com"
```

## Syntax highlighting

…is really important. even for these files.

Install [Dotfiles Syntax Highlighting](https://github.com/mattbanks/dotfiles-syntax-highlighting-st2) via [Sublime Text 2 Package Control](http://wbond.net/sublime_packages/package_control)


### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

## overview of files

####  Automatic config
* `.ackrc` - for ack (better than grep)
* `.vimrc`, `.vim` - vim config, obv.

#### shell environement
* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.functions`
* `.extra` - not included, explained above

#### Sublime Text 2 settings
* `subl/Preferences.sublime-settings`
* `subl/SublimeLinter.sublime-settings`



#### manual run
* `install-deps.sh` - random apps i need installed
* `.osx` - run on a fresh osx machine
* `.brew` - homebrew intialization

#### git, brah
* `.git`
* `.gitattributes`
* `.gitconfig`
* `.gitignore`

* `.inputrc` - config for bash readline


## Installation

```bash
git clone https://github.com/paulirish/dotfiles.git && cd dotfiles && ./sync.sh
```

To update later on, just run the sync again.
