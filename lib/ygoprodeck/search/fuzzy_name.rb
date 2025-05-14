module Ygoprodeck
  class Fname
    def self.is(f_name)
      url = "#{Ygoprodeck::Endpoint.is}cardinfo.php?fname=#{URI.encode_www_form_component(f_name)}"
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