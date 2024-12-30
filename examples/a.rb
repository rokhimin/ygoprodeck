require 'net/http'
require 'json'

			endpoint = "https://db.ygoprodeck.com/api/v7/"
			f_name = "dark magician"
			url = "#{endpoint}cardinfo.php?name=#{f_name}"

			uri = URI(url)
			response = Net::HTTP.get(uri)
			load = JSON.parse(response)
			yugi = load['data'][0]

# => get specific information of dark magician
puts yugi['id']
puts yugi['name'] 
puts yugi['attribute'] 
puts yugi['type'] 
puts yugi['race'] 
puts yugi['level'] 
puts yugi['desc']
puts yugi['atk'] 
puts yugi['def']