require 'http'

while true
  p "Enter your word (type q to quit):"
  user_input = gets.chomp

  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=")


   definition = response.parse[0]["text"]
  
  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/pronunciations?useCanonical=false&limit=50&api_key=")

  pronunciation = response.parse


  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/topExample?useCanonical=false&api_key=")
  top_example = response.parse[0]
  
  if user_input == "q"
     break
  end
end

p definition
p pronunciation
p top_example