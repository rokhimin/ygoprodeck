
module Ygoprodeck
	class Image
		attr_reader :image_by_id
		def self.is(image_by_id)
			"https://storage.googleapis.com/ygoprodeck.com/pics/#{image_by_id}.jpg"
		end
	end
end