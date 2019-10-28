
module Ygoprodeck
	class Name
		attr_reader :name
		def self.is(name)
			@name = name
			url = "#{Ygoprodeck::Endpoint.is}?name=#{@name}"
			uri = URI(url)
			response = Net::HTTP.get(uri)
			load = JSON.parse(response)
			load
		end
	end
	
end

