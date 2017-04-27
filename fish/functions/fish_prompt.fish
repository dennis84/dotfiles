function current_git_branch
  git rev-parse --abbrev-ref HEAD 2>/dev/null
end

function current_git_sha
  git rev-parse HEAD 2>/dev/null| cut -c 1-7
end

function git_dirty
  not git diff HEAD --quiet 2>/dev/null
end

function colored_arrow
  if test $argv[1] -eq 0
    printf '%s> %s' (set_color cyan) (set_color normal)
  else
    printf '%s> %s' (set_color red) (set_color normal)
  end
end

function fish_prompt
  set -l last_status $status

  colored_arrow $last_status
  printf '%s%s%s ' (prompt_pwd) (set_color normal)

  set -l branch (current_git_branch)

  if not test -z $branch
    printf ' (%s%s %s%s%s)' (set_color green) $branch (set_color cyan) (current_git_sha) (set_color normal)

    if git_dirty
      printf ' %s*%s' (set_color red) (set_color normal)
    end
  end

  echo -n " "
end
