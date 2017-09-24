class Eval
  include Cinch::Plugin

  match /eval (.+)/, method: :eval

  def eval(m)
    if m.user.host == "king-of.meme"
      if m.user.name == "Cah"
        begin
          m.reply "#{eval m.message[5..-1]}"
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
