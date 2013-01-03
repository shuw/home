handle SIGPIPE nostop

define runto
  tbreak $arg0
  cont
end
