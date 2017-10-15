require 'cinch'
require 'configatron'

Dir["#{File.dirname(__FILE__)}/plugins/*.rb"].each { |file| require file }

bot = Cinch::Bot.new do
  configure do |c|
    c.server = configatron.server.to_s
    c.channels = configatron.channels.to_s
    c.nick = configatron.nick.to_s
    c.user = configatron.user.to_s
    c.realname = configatron.realname.to_s
    c.plugins.plugins = [NS, JoinChannel, PartChannel, Eval, Help, Ping, Restart]
    c.plugins.prefix = /^\^/
  end
end

bot.start
