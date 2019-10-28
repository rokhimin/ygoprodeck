
module Ygoprodeck
	class Card
		def self.random
			url = "https://db.ygoprodeck.com/api/v5/randomcard.php"
			uri = URI(url)
			response = Net::HTTP.get(uri)
			load = JSON.parse(response)
			load[0]
		end
	end
end