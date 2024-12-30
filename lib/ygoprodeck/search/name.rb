
module Ygoprodeck
	class Name
		attr_reader :name
		def self.is(name)
			url = "#{Ygoprodeck::Endpoint.is}cardinfo.php?name=#{name}"
			uri = URI(url)
			response = Net::HTTP.get(uri)
			load = JSON.parse(response)
			
			if load['data'][0] == nil
				'{"error"=>"No card matching your query was found in the database."}'
			else
				load['data'][0]
			end
			
		end
	end
	
end

