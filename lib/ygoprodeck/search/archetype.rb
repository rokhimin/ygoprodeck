
module Ygoprodeck
	class Archetype
		attr_reader :archetype
		def self.is(archetype)
			url = "#{Ygoprodeck::Endpoint.is}cardinfo.php?archetype=#{archetype}"
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

