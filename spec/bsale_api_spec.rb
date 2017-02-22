require 'spec_helper'
require 'pry-byebug'

describe BsaleApi do

  it 'has a version number' do
    expect(BsaleApi::VERSION).not_to be nil
  end

  describe "#clients" do
    it "get clients" do
      ENV['BSALE_TOKEN'] = '95f992cfa3cd049cc2c1fc29f496e488a67153b0'
      bsale = BsaleApi.new
      clients = bsale.clients
      binding.pry
    end
  end
end
