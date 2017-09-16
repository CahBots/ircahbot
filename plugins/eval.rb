class Eval
  include Cinch::Plugin

  match /eval (.+)/, method: :eval

  def eval(m, query)
    if m.user.host == "king-of.meme"
      if m.user.name == "Cah"
        begin
          m.reply "#{eval(query)}"
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
