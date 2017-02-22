require 'spec_helper'
require 'pry-byebug'
require 'bsale_api/shipping'

describe BsaleApi do
  before(:each) do
    @bsale = BsaleApi.new
    ENV['BSALE_TOKEN'] = '95f992cfa3cd049cc2c1fc29f496e488a67153b0'
  end
  it 'has a version number' do
    expect(BsaleApi::VERSION).not_to be nil
  end

  describe '#clients' do
    it 'get clients' do
      clients = @bsale.clients
      expect(clients.response.code).to eq('200')
    end
  end

  describe '#shippings' do
    it 'get shippings' do
      shippings = @bsale.shippings
      expect(shippings.response.code).to eq('200')
    end

    it 'post shipping' do
      data = Shipping.new
      shipping = @bsale.shipping(data.object, { method: 'POST'})
      expect(shipping.response.code).to eq('304')
    end
  end
end
