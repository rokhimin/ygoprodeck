
module Ygoprodeck
	class Card
		def self.random
			url = "https://db.ygoprodeck.com/api/v7/randomcard.php"
			uri = URI(url)
			response = Net::HTTP.get(uri)
			load = JSON.parse(response)
			load['data'][0]
		end
	end
end