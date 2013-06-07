require "socket"

server = "chat.freenode.net"
port = "6667"
nick = "ZRM Bot"
channel = "#bitmaker"
greeting_prefix = "PRIVMSG #bitmaker:"
greetings = ["I do", "I don't"]

s = TCPSocket.open(server, port)
# print("addr: ", s.addr.join(":"), "\n")
# print("peer: ", s.peeraddr.join(":"), "\n")

s.puts "USER ZRM Bot 0 * ZRM Bot"
s.puts "NICK #{nick}"
s.puts "JOIN #{channel}"
s.puts "PRIVMSG #{channel} :"

until s.eof? do
  msg = s.gets
  puts msg


	wasGreeted = false
	greetings.each do |greeting|
	wasGreeted = true if msg.include? greeting
	end

	if msg.include? greeting_prefix and wasGreeted
		response - "With the power invested in me  - #{response1} & #{response2} I pronounce you Man & Wife"
		s.puts "PRIVMSG #{channel} :#{response}"
	end
end