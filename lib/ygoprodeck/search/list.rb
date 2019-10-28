
module Ygoprodeck
	class List
		attr_reader :list
		def self.is(list)
			url = "#{Ygoprodeck::Endpoint.is}?fname=#{list}"
			uri = URI(url)
			response = Net::HTTP.get(uri)
			load = JSON.parse(response)
			
			if load[0] == nil
				'{"error"=>"No card matching your query was found in the database."}'
			else
				load
			end
			
		end
	end
	
end

