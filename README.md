dotfiles
========

My bash setup. Most of the settings are taken from [mathias dotfiles](https://github.com/mathiasbynens/dotfiles).

Installation
------------

Install homebrew:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Clone repository:
```bash
git clone https://github.com/maxhoffmann/dotfiles.git && cd dotfiles
```

Install Bash Utils (newest bash version etc.):
```bash
./brew.sh
```

```bash
source setup.sh
```

Set some OS X default settings:
```bash
./.osx
```

Setup Sublime:
```bash
./sublime.sh
```
