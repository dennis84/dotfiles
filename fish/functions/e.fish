function e
    if test -d $argv
        nvim -c ':Neotree position=current' $argv
    else if count $argv >/dev/null
        nvim $argv
    else
        nvim -c ':Neotree position=current'
    end
end
