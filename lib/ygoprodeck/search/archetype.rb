
module Ygoprodeck
	class Archetype
		attr_reader :archetype
		def self.is(archetype)
			url = "#{Ygoprodeck::Endpoint.is}cardinfo.php?archetype=#{archetype}"
			uri = URI(url)
			response = Net::HTTP.get(uri)
			load = JSON.parse(response)
			
			if load['data'] == nil
				'{"error"=>"No card matching your query was found in the database."}'
			else
				load['data']
			end
			
		end
	end
	
end

