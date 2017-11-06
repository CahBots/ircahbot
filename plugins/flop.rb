class Flop
  include Cinch::Plugin

  match /flop/, method: :flop

  def flop(m)
    m.reply ['Oops, the coin flipped so high it didn't come back down', 'The coin multiplied and landed on both', 'The coin... disappeared', "Pong! It took #{Format(:bold, '#{((Time.now - event.timestamp) * 1000).to_i}ms')} to ping the coin", "And you got a... #{Format(:bold, '#{rand(1..6)}!')} wait thats not how coins work", 'Perhaps you could resolve your situation without relying on luck', 'noot', '[Witty joke concerning flipping a coin]', '[BOTTOM TEXT]'].sample
  end
end
