module Ygoprodeck
  class List
    attr_reader :list
    
    def self.is(list)
      begin
        # Encode query parameter to handle special characters properly
        url = "#{Ygoprodeck::Endpoint.is}cardinfo.php?fname=#{URI.encode_www_form_component(list)}"
        uri = URI(url)
        
        # Use timeout to prevent hanging on slow connections
        response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https', open_timeout: 10, read_timeout: 10) do |http|
          http.get(uri.request_uri)
        end
        
        # Check HTTP status code first
        case response
        when Net::HTTPSuccess
          load = JSON.parse(response.body)
          
          if load.has_key?('error')
            return { 'error' => load['error'] }
          elsif load['data'].nil? || load['data'].empty?
            return { 'error' => 'No card matching your query was found in the database.' }
          else
            return load['data']
          end
        else
          return { 'error' => "HTTP request failed with status code: #{response.code}" }
        end
        
      rescue URI::InvalidURIError => e
        { 'error' => 'Invalid URL or search term' }
      rescue JSON::ParserError => e
        { 'error' => 'Failed to parse JSON response' }
      rescue Net::OpenTimeout => e
        { 'error' => 'Connection timed out' }
      rescue Net::ReadTimeout => e
        { 'error' => 'Request timed out' }
      rescue SocketError => e
        { 'error' => 'Network connection error' }
      rescue StandardError => e
        { 'error' => "An unexpected error occurred: #{e.message}" }
      end
    end
  end
end