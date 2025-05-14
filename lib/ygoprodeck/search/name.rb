module Ygoprodeck
  class Name
    attr_reader :name
    
    def self.is(name)
      url = "#{Ygoprodeck::Endpoint.is}cardinfo.php?name=#{URI.encode_www_form_component(name)}"
      uri = URI(url)

      begin
        response = Net::HTTP.get(uri)
        load = JSON.parse(response)

        return nil if load["data"].nil? || load["data"].empty?

        load["data"][0]

      rescue JSON::ParserError, SocketError, StandardError => e
        nil
      end
    end
  end
end