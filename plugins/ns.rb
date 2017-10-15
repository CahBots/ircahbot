class NS
  include Cinch::Plugin

  listen_to :connect
  User("NickServ").send("identify #{configatron.nspass}")
end