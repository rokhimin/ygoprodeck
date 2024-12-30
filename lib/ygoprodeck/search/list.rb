
module Ygoprodeck
	class List
		attr_reader :list
		def self.is(list)
			url = "#{Ygoprodeck::Endpoint.is}cardinfo.php?fname=#{list}"
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

