require 'cinch'

class JoinChannel
  include Cinch::Plugin

  match /join (.+)/, method: :join

  def join(m, join)
    if m.user.host == "king-of.meme"
      if m.user.name == "Cah"
        Channel(join).join
        m.reply "Joined the channel successfully!"
      else
        m.reply "You are not permitted to do this action!"
      end
    end
  end
end

class PartChannel
  include Cinch::Plugin

  match /part (.+)/, method: :part

  def part(m, part)
    if m.user.host == "king-of.meme"
      if m.user.name == "Cah"
        Channel(part).part
        m.reply "Left the channel successfully!"
      else
        m.reply "You are not permitted to do this action!"
      end
    end
  end
end

bot = Cinch::Bot.new do
  configure do |c|
    c.server = "irc.cahbot.pro"
    c.channels = ["#general", "#cah"]
    c.nick = "IRCahBot"
    c.user = "IRCahBot"
    c.realname = "IRCahBot"
    c.plugins.plugins = [JoinChannel, PartChannel]
  end

  on :message, "^restart" do |m|
    if m.user.host == "king-of.meme"
      if m.user.name == "Cah"
        begin
          m.reply ['Into the ***fuuuutttttuuuuurrrreeee***', 'Please wait...', 'How about n—', 'Can do :thumbsup::skin-tone-1:', 'Pong! Hey, that took... Oh wait, wrong command', 'Ask again at a later ti—'].sample
          exec('bash restart.sh')
        end
      else
        m.reply 'Sorry, only Cah can update me'
      end
    end
  end
  
  on :message, "^help" do |m|
    m.reply "Hey #{m.user.nick}, this is IRCahBot, the IRC version of a bot that was originally for Discord. Currently the only commands are the one you just used and ^ping"
  end
  
  on :message, "^ping" do |m|
    m.reply "Pong! That took #{((Time.now - m.time) * 1000).to_i}ms"
  end

  on :message, /^\^eval (.+)/ do |m, query|
    if m.user.host == "king-of.meme"
      if m.user.name == "Cah"
        begin
          m.reply "#{eval(query)}"
        rescue => e
          m.reply "#{e}"
        end
      else
        m.reply "You aren't the king of meme!"
      end
    else
      m.reply "You aren't the king of meme!"
    end
  end
end

bot.start
