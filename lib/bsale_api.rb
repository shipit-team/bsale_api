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
      self.class.get("/v#{@version}/clients.#{@extension}", headers: @headers )
  end
end
