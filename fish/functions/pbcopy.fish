function pbcopy
  switch (uname)
    case Linux
      xclip -selection clipboard
    case Darwin
      pbcopy
  end
end
