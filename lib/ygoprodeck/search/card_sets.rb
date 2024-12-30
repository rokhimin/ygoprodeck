
module Ygoprodeck
	class Card
		def self.sets
			url = "https://db.ygoprodeck.com/api/v7/cardsets.php"
			uri = URI(url)
			response = Net::HTTP.get(uri)
			load = JSON.parse(response)
			load
		end
	end
end