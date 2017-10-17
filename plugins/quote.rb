class RQuote
  include Cinch::Plugin

  match /rquote/, method: :rquote

  def rquote(m)
<<<<<<< HEAD
    response = RestClient.get(configatron.quoteuri, header= { 'X-Mashape-Key' => configatron.quotekey })
=======
    response = RestClient.get(configatron.quoteuri, header = { 'X-Mashape-Key' => sconfigatron.quotekey })
>>>>>>> 70abcea926bc503f686151e2c84321ab52047931
    jparse = JSON.parse(response)
    m.reply 'Quotes courtesy of https://market.mashape.com/andruxnet/random-famous-quotes#'
    m.reply "Quote: #{jparse.fetch('quote')}"
    m.reply "From: #{jparse.fetch('author')}"
  end
end
