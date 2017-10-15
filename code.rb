require 'cinch'
require 'configatron'
require_relative 'config.rb'

Dir["#{File.dirname(__FILE__)}/plugins/*.rb"].each { |file| require file }

bot = Cinch::Bot.new do
  configure do |c|
    c.server = "#{configatron.server}"
    c.channels = "#{configatron.channels}"
    c.nick = "#{configatron.nick}"
    c.user = "#{configatron.user}"
    c.realname = "#{configatron.realname}"
    c.plugins.plugins = [NS, JoinChannel, PartChannel, Eval, Help, Ping, Restart]
    c.plugins.prefix = /^\^/
  end
end

bot.start
