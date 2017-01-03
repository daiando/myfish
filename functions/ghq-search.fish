function ghq-search
#    if set -q $argv
#      ghq list -p | peco | read line; builtin cd $line
#    else
#      ghq list -p | peco --query $argv | read line; builtin cd $line
#    end
  if test (count $argv) = 0
    set peco_flags --layout=bottom-up
  else
    set peco_flags --layout=bottom-up --query "$argv"
  end

  ghq list -p|peco $peco_flags|read foo

  if [ $foo ]
    commandline "cd $foo"
  else
    commandline ''
  end
end

