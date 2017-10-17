class PartChannel
  include Cinch::Plugin

  match /part (.+)/, method: :part

  def part(m, part)
    if m.user.host == 'king-of.meme'
      if m.user.name == 'Cah'
        Channel(part).part
        m.reply 'Left the channel successfully!'
      else
        m.reply 'You are not permitted to do this action!'
      end
    end
  end
end
