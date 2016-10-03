
module SimpleCurrencyConverter
  class Client
    def get_exchange_rate(from_currency, to_currency)
      currency_name = from_currency.to_s + to_currency.to_s + '=X'
      yahoo_query_url =
        URI::HTTP.build(host:"download.finance.yahoo.com",path:"/d/quotes.csv", query:"s=#{currency_name}&f=l1d1t1&e=.csv")

      response = Net::HTTP.get(yahoo_query_url)

      unless response.nil?
        parsed_response = response.split(',')
        exchange_rate = parsed_response.first

        exchange_rate == 'N/A' ? nil : exchange_rate.to_f
      end
    end
  end
end
