require 'bsale_api/version'
require 'httparty'
require 'dotenv/load'

class BsaleApi
  include HTTParty
  base_uri 'https://api.bsale.cl'

  def initialize(version=1, extension='.json')
    @headers = {
      'Content-Type' => 'application/json',
      'access_token' => ENV['BSALE_TOKEN']
    }
    @version = version
    @extension = extension
  end

  def clients
    self.class.get("/v#{@version}/clients#{@extension}", headers: @headers)
  end

  def document(data = {}, parameters)
    self.class.send(parameters[:method].downcase, "/v#{@version}/documents#{@extension}", headers: @headers, body: data.to_json)
  end

  def documents
    self.class.get("/v#{@version}/documents#{@extension}", headers: @headers)
  end

  def document_types
    self.class.get("/v#{@version}/document_types#{@extension}", headers: @headers)
  end

  def office(data = {}, parameters)
    self.class.send(parameters[:method].downcase,
                    "/v#{@version}/offices#{parameters[:specific]}#{@extension}",
                    headers: @headers, body: data.to_json)
  end

  def offices
    self.class.get("/v#{@version}/offices#{@extension}", headers: @headers)
  end

  def price_lists
    self.class.get("/v#{@version}/price_lists#{@extension}", headers: @headers)
  end

  def shipping(data = {}, parameters)
    self.class.send(parameters[:method].downcase,
                    "/v#{@version}/shippings#{parameters[:specific]}#{@extension}",
                    headers: @headers, body: data.to_json)
  end

  def shippings
    self.class.get("/v#{@version}/shippings#{@extension}", headers: @headers)
  end

  def shipping_types
    self.class.get("/v#{@version}/shipping_types#{@extension}", headers: @headers)
  end
end
