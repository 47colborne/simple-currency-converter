module Currency
  class CurrencyClient

    def get_exchange_rate(from_currency, to_currency)
      currency_name = from_currency.to_s + to_currency.to_s + '=X'
      yahoo_query_url =
        URI::HTTP.build(host:"download.finance.yahoo.com",path:"/d/quotes.csv", query:"s=#{currency_name}&f=l1c1p2rj1&e=.csv")
      Net::HTTP.get(yahoo_query_url)
    end

  end
end
