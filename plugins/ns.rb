class NS
  include Cinch::Plugin

  listen_to :connect, method: :thing

  def thing(_chungus)
    User('NickServ').send("identify #{configatron.nspass}")
  end
end
