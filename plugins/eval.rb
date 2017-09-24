class Eval
  include Cinch::Plugin

  match /eval (.+)/, method: :execute

  def execute(m, code)
    if m.user.host == "king-of.meme"
      if m.user.name == "Cah"
        begin
          m.reply (eval code)
        rescue => e
          m.reply "An error occured. THE ERROR: ```#{e}```"
        end
      else
        m.reply "You aren't the king of meme!"
      end
    else
      m.reply "You aren't the king of meme!"
    end
  end
end
