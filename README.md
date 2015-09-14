# simple-currency-converter
Provides a client to pull currency exchange rates from Yahoo web service for Ruby

Tutorial/Example code:

``` ruby
client = CurrencyClient.new
client.get_exchange_rate(:USD, :CAD) => 1.3267