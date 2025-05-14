module Ygoprodeck
  class CheckDbVer
    def self.info
      url = "https://db.ygoprodeck.com/api/v7/checkDBVer.php"
      uri = URI(url)
      
      begin
        response = Net::HTTP.get_response(uri)
        
        unless response.is_a?(Net::HTTPSuccess)
          return { 'error' => "HTTP request failed with status code: #{response.code}" }
        end
        
        load = JSON.parse(response.body)
        
        if load.is_a?(Hash) && load.has_key?('error')
          { 'error' => load['error'] }
        else
          load
        end
        
      rescue JSON::ParserError => e
        { 'error' => 'Failed to parse JSON response' }
      rescue SocketError => e
        { 'error' => 'Network connection error' }
      rescue Net::ReadTimeout => e
        { 'error' => 'Request timed out' }
      rescue StandardError => e
        { 'error' => "An unexpected error occurred: #{e.message}" }
      end
    end
  end
end