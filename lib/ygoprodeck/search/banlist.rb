module Ygoprodeck
  class Banlist
    def self.fetch_banlist(format)
      url = "#{Ygoprodeck::Endpoint.is}cardinfo.php?banlist=#{format}"
      uri = URI(url)
      
      begin
        response = Net::HTTP.get(uri)
        load = JSON.parse(response)
        
        if load.has_key?('error')
          { 'error' => load['error'] }
        else
          load
        end
        
      rescue JSON::ParserError => e
        { 'error' => 'Failed to parse JSON response' }
      rescue SocketError => e
        { 'error' => 'Network connection error' }
      rescue StandardError => e
        { 'error' => "An unexpected error occurred: #{e.message}" }
      end
    end
    
    def self.tcg
      fetch_banlist('tcg')
    end
    
    def self.ocg
      fetch_banlist('ocg')
    end
    
    def self.goat
      fetch_banlist('goat')
    end
  end
end