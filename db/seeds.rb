require 'rest-client'
require 'json'
require 'pry'

response = RestClient.get('https://rickandmortyapi.com/api/character')
data = JSON.parse(response)
characters = data["results"]
characters.map do |character|
    Character.create(name: character["name"], status: character["status"], gender: character["gender"])
end

binding.pry