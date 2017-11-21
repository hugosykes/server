require 'socket'
server = TCPServer.new 5678

while session = server.accept
  request = session.gets
  puts request

  session.print "HTTP/1.1 200 \r\n"
  session.print "Content-Type: text/html\r\n"
  session.print "\r\n"
  session.print "Hello Lucy! The time now is not important"

  session.close

end