
module Ygoprodeck
	class Image
		attr_reader :image_by_id
		def self.is(image_by_id)
			"https://storage.googleapis.com/ygoprodeck.com/pics/#{image_by_id}.jpg"
		end
	end
	
	class ImageSmall
		attr_reader :image_small_by_id
		def self.is(image_by_id)
			"https://storage.googleapis.com/ygoprodeck.com/pics_small/#{image_small_by_id}.jpg"
		end
	end
end