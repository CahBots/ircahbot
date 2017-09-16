class Restart
  include Cinch::Plugin

  match /restart/, method: :restart

  def restart(m)
    if m.user.host == "king-of.meme"
      if m.user.name == "Cah"
        begin
          m.reply ['Into the ***fuuuutttttuuuuurrrreeee***', 'Please wait...', 'How about n—', 'Can do :thumbsup::skin-tone-1:', 'Pong! Hey, that took... Oh wait, wrong command', 'Ask again at a later ti—'].sample
          exec('bash restart.sh')
        end
      else
        m.reply 'Sorry, only Cah can update me'
      end
      m.reply 'Sorry, only Cah can update me'
    end
  end
end
