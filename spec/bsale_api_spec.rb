require 'spec_helper'
require 'pry-byebug'
require 'bsale_api/shipping'
require 'bsale_api/document'
require 'bsale_api/office'

describe BsaleApi do
  before(:each) do
    @bsale = BsaleApi.new
  end
  it 'has a version number' do
    expect(BsaleApi::VERSION).not_to be nil
  end

  describe '#clients' do
    it 'get clients' do
      clients = @bsale.clients
      expect(clients.response.code).to eq('200')
    end

    it 'get client' do
      client = @bsale.client({ method: 'GET', specific: '/1' })
      expect(client.response.code).to eq('201')
    end
  end

  describe '#documents' do
    it 'get documents' do
      documents = @bsale.documents
      expect(documents.response.code).to eq('200')
    end

    it 'get document' do
      document = @bsale.document({ method: 'GET', specific: '/1' })
      expect(document.response.code).to eq('201')
    end

    it 'post document' do
      data = Document.new
      document = @bsale.document({ method: 'POST' }, data.object)
      expect(document.response.code).to eq('201')
    end
  end

  describe '#document types' do
    it 'get document types' do
      document_types = @bsale.document_types
      expect(document_types.response.code).to eq('200')
    end
  end

  describe '#offices' do
    it 'get offices' do
      offices = @bsale.offices
      expect(offices.response.code).to eq('200')
    end

    it 'get office' do
      office = @bsale.office({ specific: '/1', method: 'GET' })
      expect(office.response.code).to eq('200')
    end

    it 'post office' do
      data = Office.new
      office = @bsale.office({ method: 'POST' }, data.object)
      expect(office.response.code).to eq('201')
    end
  end

  describe '#price_lists' do
    it 'get price_lists' do
      price_lists = @bsale.price_lists
      expect(price_lists.response.code).to eq('200')
    end
  end

  describe '#shippings' do
    it 'get shippings' do
      shippings = @bsale.shippings
      expect(shippings.response.code).to eq('200')
    end

    it 'get shipping' do
      shipping = @bsale.shipping({ method: 'GET', specific: '/1' })
      expect(shipping.response.code).to eq('200')
    end

    it 'post shipping' do
      data = Shipping.new
      shipping = @bsale.shipping({method: 'POST' }, data.object)
      expect(shipping.response.code).to eq('201')
    end
  end

  describe '#shipping_types' do
    it 'get shipping types' do
      shipping_types = @bsale.shipping_types
      expect(shipping_types.response.code).to eq('200')
    end
  end
end
