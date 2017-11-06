class Flip
  include Cinch::Plugin

  match /flip/, method: :flip

  def flip(m)
    m.reply ["woahdude, you got **Heads**", "woahdude, you got **Tails**", "You got **heads**", "You got **tails**"].sample
  end
end
