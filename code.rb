require 'cinch'
require 'rest-client'
require 'json'
require 'configatron'
require_relative 'config.rb'

Dir["#{File.dirname(__FILE__)}/plugins/*.rb"].each { |file| require file }

bot = Cinch::Bot.new do
  configure do |c|
    c.server = configatron.server.to_s
    c.channels = configatron.channels
    c.nick = configatron.nick.to_s
    c.user = configatron.user.to_s
    c.realname = configatron.realname.to_s
    c.plugins.plugins = [NS, JoinChannel, PartChannel, Eval, Help, Ping, Restart, Reverse, RQuote, Flip, Flop, Invite]
    c.plugins.prefix = /^\^/
  end
end

bot.start
