class Help
  include Cinch::Plugin

  match /help/, method: :help

  def help(m)
    m.reply "Hey #{m.user.nick}, this is IRCahBot, the IRC version of a bot that was originally for Discord. Currently the only commands are the one you just used and ^ping"
  end
end
