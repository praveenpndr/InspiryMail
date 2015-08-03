require 'httparty'
require 'json'

def get_quote
  puts "Getting the quote"
  response = HTTParty.get(QUOTE_URL)
  body = JSON.parse(response.body)
  author = body["contents"]["quotes"][0]["author"]
  quote = body["contents"]["quotes"][0]["quote"]
  puts "Got quote from #{author}!! \n#{quote}"
end

puts "This will get me a quote."
QUOTE_URL = "http://api.theysaidso.com/qod.json?category=inspire"
get_quote
