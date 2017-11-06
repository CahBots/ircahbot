class Flip
  include Cinch::Plugin

  match /flip/, method: :flip

  def flip(m)
    m.reply ["woahdude, you got #{Format(:bold, 'Heads')}", "woahdude, you got #{Format(:bold, 'Tails')}", "You got #{Format(:bold, 'heads')}", "You got #{Format(:bold, 'tails')}"].sample
  end
end
