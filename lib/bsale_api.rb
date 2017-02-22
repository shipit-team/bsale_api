require "bsale_api/version"
require 'httparty'

class BsaleApi
  include HTTParty
  base_uri 'https://api.bsale.cl'

  def initialize(version=1, extension='json')
    @headers = {
      'Content-Type' => 'application/json',
      'access_token' => ENV['BSALE_TOKEN']
    }
    @version = version
    @extension = extension
  end

  def clients
    self.class.get("/v#{@version}/clients.#{@extension}", headers: @headers)
  end

  def shippings
    self.class.get("/v#{@version}/shippings.#{@extension}", headers: @headers)
  end

  def shipping(data, parameters)
    self.class.send(parameters[:method].downcase, "/v#{@version}/shippings.#{@extension}", headers: @headers, body: data.to_json)
  end
end
