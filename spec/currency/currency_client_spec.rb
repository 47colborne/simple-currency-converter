require 'spec_helper'

module Currency
  describe CurrencyClient do
    describe '#get_exchange_rate' do
      it 'should create the yahoo download link based on the given params' do
        yahoo_uri_params = { host:"download.finance.yahoo.com", path:"/d/quotes.csv", query:"s=CADUSD=X&f=l1c1p2rj1&e=.csv" }
        expect(URI::HTTP).to receive(:build).with(yahoo_uri_params)
        allow(Net::HTTP).to receive(:get)
        CurrencyClient.new.get_exchange_rate(:CAD, :USD)
      end
    end




  end
end
