
module Ygoprodeck
	class Banlist
		def self.tcg
			url = "#{Ygoprodeck::Endpoint.is}?banlist=tcg"
			uri = URI(url)
			response = Net::HTTP.get(uri)
			load = JSON.parse(response)
			load
		end
		def self.ocg
			url = "#{Ygoprodeck::Endpoint.is}?banlist=ocg"
			uri = URI(url)
			response = Net::HTTP.get(uri)
			load = JSON.parse(response)
			load
		end
		def self.goat
			url = "#{Ygoprodeck::Endpoint.is}?banlist=goat"
			uri = URI(url)
			response = Net::HTTP.get(uri)
			load = JSON.parse(response)
			load
		end
	end
end