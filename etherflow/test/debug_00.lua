
require 'etherflow'
require 'image'

etherflow.open()

for i = 1,8 do
   print 'waiting for string'
   sys.tic()
   print(etherflow.receivestring())
   sys.toc(true)
end
