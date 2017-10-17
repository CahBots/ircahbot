class Eval
  include Cinch::Plugin

  match /eval (.+)/, method: :execute

  def execute(m, code)
    if m.user.host == 'king-of.meme'
      if m.user.name == 'Cah'
        begin
          m.reply eval code
        rescue => e
          m.reply "Oh snap tappity, something bad happened; ```#{e}```"
        end
      else
        m.reply "You aren't the king of meme!"
      end
    else
      m.reply "You aren't the king of meme!"
    end
  end
end
