module Ygoprodeck
  class Card
    def self.sets
      url = "https://db.ygoprodeck.com/api/v7/cardsets.php"
      uri = URI(url)
      
      begin
        response = Net::HTTP.get(uri)
        load = JSON.parse(response)
        
        if load.is_a?(Hash) && load.has_key?('error')
          { 'error' => load['error'] }
        else
          load
        end
        
      rescue JSON::ParserError => e
        { 'error' => 'Failed to parse JSON response' }
      rescue SocketError => e
        { 'error' => 'Network connection error' }
      rescue Timeout::Error => e
        { 'error' => 'Request timed out' }
      rescue StandardError => e
        { 'error' => "An unexpected error occurred: #{e.message}" }
      end
    end
  end
end