
require 'etherflow'
require 'image'

etherflow.open(nil, {0xff,0xff,0xff,0xff,0xff,0xff}, {0xff,0xff,0xff,0xff,0xff,0xff})

for i = 1,8 do
   print 'waiting for string'
   sys.tic()
   etherflow.sendstring("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890")

   print(etherflow.receivestring())
   print(etherflow.receivestring())
   sys.toc(true)
end
