class Help
  include Cinch::Plugin

  match /help/, method: :help

  def help(m)
    m.reply "Hey #{m.user.nick}, this is IRCahBot, the IRC version of a bot that was originally for Discord. Currently the only commands are:"
    m.reply '^ping: I mean what do you expect?'
    m.reply '^help: I mean, what did you just do?'
    m.reply '^rquote: Pulls up a random "famous" quote.'
    m.reply '^eval <thing>: Cah-exclusive, does what you\'d expect an eval to do.'
    m.reply '^reverse <gniht>: .ffuts sesrever'
    m.reply '^flip: Flips a coin, what else did you expect?'
    m.reply '^flop: Flops a coin, what expect did you else?'
  end
end
