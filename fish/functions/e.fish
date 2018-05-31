function e
  if test -d $argv
    nvim -c ':Explore' $argv
  else if count $argv > /dev/null
    nvim $argv
  else
    nvim -c ':Explore'
  end
end
