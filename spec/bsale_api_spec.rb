require 'spec_helper'
require 'pry-byebug'
require 'bsale_api/shipping'
require 'bsale_api/document'
require 'bsale_api/office'

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

    it 'post shipping'
  end

  describe '#documents' do
    it 'get documents' do
      documents = @bsale.documents
      expect(documents.response.code).to eq('200')
    end

    it 'post document'
  end

  describe '#offices' do
    it 'get offices' do
      offices = @bsale.offices
      expect(offices.response.code).to eq('200')
    end

    it 'post office' do
      data = Office.new
      office = @bsale.office(data.object, { method: 'POST'})
      expect(office.response.code).to eq('201')
    end
  end

  describe '#document_types' do
    it 'get document types' do
      document_types = @bsale.document_types
      expect(document_types.response.code).to eq('200')
    end
  end

end
