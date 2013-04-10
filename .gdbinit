handle SIGPIPE nostop
set print elements 0

define runto
  tbreak $arg0
  cont
end
