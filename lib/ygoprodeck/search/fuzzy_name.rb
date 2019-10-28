
module Ygoprodeck
	class Fname
		attr_reader :f_name
		def self.is(f_name)
			url = "#{Ygoprodeck::Endpoint.is}?fname=#{f_name}"
			uri = URI(url)
			response = Net::HTTP.get(uri)
			load = JSON.parse(response)
			
			if load[0] == nil
				'{"error"=>"No card matching your query was found in the database."}'
			else
				load[0]
			end
			
		end
	end
	
end

