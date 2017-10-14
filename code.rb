require 'cinch'
require 'configatron'

Dir["#{File.dirname(__FILE__)}/plugins/*.rb"].each { |file| require file }

bot = Cinch::Bot.new do
  configure do |c|
    c.server = configatron.server
    c.channels = configatron.channels
    c.nick = configatron.nick
    c.user = configatron.user
    c.realname = configatron.realname
    c.plugins.plugins = [JoinChannel, PartChannel, Eval, Help, Ping, Restart]
    c.plugins.prefix = /^\^/
  end
end

User('NickServ').send("identify #{configatron.nspass}")

bot.start
