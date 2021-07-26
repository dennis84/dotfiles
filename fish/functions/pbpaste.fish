function pbpaste
  switch (uname)
    case Linux
      xclip -selection clipboard -o
    case Darwin
      pbpaste
  end
end
