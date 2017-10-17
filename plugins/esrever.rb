Class Reverse
  include Cinch::Plugin

  match /reverse(.+)/, method: :execute

  def execute(m, words)
    m.reply words.to_s.reverse
  end
end