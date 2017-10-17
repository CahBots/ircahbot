class RQuote
  include Cinch::Plugin

  match /rquote/, method: :rquote

  def rquote(m)
    response = RestClient.get(configatron.quoteuri, header = { 'X-Mashape-Key' => configatron.quotekey })
    jparse = JSON.parse(response)
    m.reply 'Quotes courtesy of https://market.mashape.com/andruxnet/random-famous-quotes#'
    m.reply "Quote: #{jparse.fetch('quote')}"
    m.reply "From: #{jparse.fetch('author')}"
  end
end

