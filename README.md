# Dotfiles

All of these bash configurations live in `~/.bash_profile.d/`.
 
My real bash profile, be it `~/.bash_profile` or `~/.bash_rc` contains this script:

```bash
test -d $HOME/.bash_profile.d && {
  for file in `ls $HOME/.bash_profile.d/*.sh`
  do
    source $file
  done
}
```

This way, my otherwise cluttered bash profile is tidied up into nicely named, easily maintainable modules. 

## Dependencies

### Brew install the following things:

```bash
brew install rbenv
brew install git
brew install bash-completion
```