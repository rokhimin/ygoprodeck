module Ygoprodeck
  class Archetype
    attr_reader :archetype
    
    def self.is(archetype)
      url = "#{Ygoprodeck::Endpoint.is}cardinfo.php?archetype=#{URI.encode_www_form_component(archetype)}"
      uri = URI(url)
      
      begin
        response = Net::HTTP.get(uri)
        load = JSON.parse(response)
        
        if load['data'].nil? || load['data'].empty?
          { 'error' => 'No card matching your query was found in the database.' }
        else
          load['data']
        end
        
      rescue JSON::ParserError => e
        { 'error' => 'Failed to parse JSON response' }
      rescue SocketError => e
        { 'error' => 'Network connection error' }
      rescue StandardError => e
        { 'error' => "An unexpected error occurred: #{e.message}" }
      end
    end
  end
end