require 'spec_helper'

module SimpleCurrencyConverter
  describe Client do
    describe '#get_exchange_rate' do
      let(:yahoo_uri_params) { {host:"download.finance.yahoo.com", path:"/d/quotes.csv", query:"s=CADUSD=X&f=l1d1t1&e=.csv"} }
      let(:currency_client) { Client.new }

      it 'should create the yahoo download link based on the given params' do
        expect(URI::HTTP).to receive(:build).with(yahoo_uri_params)
        allow(Net::HTTP).to receive(:get)
        currency_client.get_exchange_rate(:CAD, :USD)
      end

      it 'should parse the returned csv record into a float' do
        response = "0.7538,\"9/11/2015\",\"5:13pm\"\n"
        allow(Net::HTTP).to receive(:get).and_return(response)

        exchange_rate = currency_client.get_exchange_rate(:CAD, :USD)
        expect(exchange_rate).to eq(0.7538)
      end

      it 'should return nil if no exchange rate is found' do
        response = "N/A,N/A,N/A\n"
        allow(Net::HTTP).to receive(:get).and_return(response)

        exchange_rate = currency_client.get_exchange_rate(:non_existant_currency, :USD)
        expect(exchange_rate).to be_nil
      end
    end
  end
end

