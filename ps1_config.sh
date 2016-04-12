# configure git-prompt
export GIT_PS1_SHOWDIRTYSTATE=true
 
function _ps1_join {
  local s=''
  for arg in $@
    do s+=$arg
  done
  echo -n $s
}
 
function _ps1_git_username {
  local git_user=`git config --global user.name`
  test "$git_user" && echo "$git_user" && return
  echo "No Git User"
}
 
dark_gray='[0;38;5;238m'
light_gray='[0;38;5;250m'
some_blue='[0;38;5;32m'
reset_color='[m'

space='\040'
 
line1_segments=(
  # working dir: \W for directory name, \w for full path
  '\W'
  '\[' '\e' $some_blue '\]'
  # git ref
  '`__git_ps1`'
  $space
  '\[' '\e' $reset_color '\]'
  '\[' '\e' $light_gray '\]'
  '$'
  '\[' '\e' $reset_color '\]'
  $space
)

# Configure colors for ls...
# Annotate file types : -F
# Colors              : -G
# Human file sizes    : -h
alias ls='ls -FGh'
 
export PS1="`_ps1_join ${line1_segments[@]}`"
