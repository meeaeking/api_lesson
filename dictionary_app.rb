require 'http'

while true
  p "Enter your word (type q to quit):"
  user_input = gets.chomp

  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=a")


  p response.parse[0]["text"]
  p response.parse[0]["partOfSpeech"]
  if user_input == "q"
     break
  end
end