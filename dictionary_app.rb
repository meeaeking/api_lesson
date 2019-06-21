require 'http'

while true
  p "Enter your word (type q to quit):"
  user_input = gets.chomp

  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")


  p response.parse[0]["text"]
  p response.parse[0]["partOfSpeech"]

  

end