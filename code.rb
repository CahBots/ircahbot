require 'cinch'

Dir["#{File.dirname(__FILE__)}/plugins/*.rb"].each { |file| require file }

bot = Cinch::Bot.new do
  configure do |c|
    c.server = "irc.cahbot.pro"
    c.channels = ["#general", "#cah","#ircahbot"]
    c.nick = "IRCahBot"
    c.user = "IRCahBot"
    c.realname = "IRCahBot"
    c.plugins.plugins = [JoinChannel, PartChannel, Eval, Help, Ping, Restart]
    c.plugins.prefix = /^\^/
  end
end

bot.start
