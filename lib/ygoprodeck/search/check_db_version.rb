module Ygoprodeck
	class CheckDbVer
		def self.info
			url = "https://db.ygoprodeck.com/api/v7/checkDBVer.php"
			uri = URI(url)
			response = Net::HTTP.get(uri)
			load = JSON.parse(response)
			load
		end
	end
end