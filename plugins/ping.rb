class Ping
  include Cinch::Plugin

  match /ping/, method: :ping

  def ping(m)
    m.reply "Pong! That took #{((Time.now - m.time) * 1000).to_i}ms"
  end
end
