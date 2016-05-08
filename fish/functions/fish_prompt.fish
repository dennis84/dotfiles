function current_git_branch
  git rev-parse --abbrev-ref HEAD 2>/dev/null
end

function current_git_sha
  git rev-parse HEAD 2>/dev/null| cut -c 1-7
end

function git_dirty
  not git diff HEAD --quiet 2>/dev/null
end

function fish_prompt
  printf '%sλ %s' (set_color red) (set_color normal)
  printf '%s%s%s ' (prompt_pwd) (set_color normal)
  
  set -l branch (current_git_branch)

  if not test -z $branch
    printf '%s±(%s%s %s%s%s)' (set_color normal) (set_color green) $branch (set_color cyan) (current_git_sha) (set_color normal)

    if git_dirty
      printf ' %s*' (set_color red)
    end

    echo -n " "
  end
end
