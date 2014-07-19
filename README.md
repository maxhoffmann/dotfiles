dotfiles
========

My bash setup. Most of the settings are taken from [mathias dotfiles](https://github.com/mathiasbynens/dotfiles).

Installation
------------

Install homebrew:
```
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

Install Bash Utils (newest bash version etc.):
```bash
brew bundle Brewfile
```

Install Programs:
```bash
brew bundle Caskfile
```

Clone repository and run setup script:
```bash
git clone https://github.com/maxhoffmann/dotfiles.git && cd dotfiles && source setup.sh
```

Set some OS X default settings:
```bash
./.osx
``
