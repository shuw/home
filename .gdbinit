handle SIGPIPE nostop
set print elements 0

define runto
  tbreak $arg0
  cont
end

python
import sys
sys.path.insert(0, '/home/shuw/gdb-python-libstdc++')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)

end
