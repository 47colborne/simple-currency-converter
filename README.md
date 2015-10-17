# simple-currency-converter
Provides a client to pull currency exchange rates from Yahoo web service for Ruby

[![Build Status](https://travis-ci.org/47colborne/simple-currency-converter.svg?branch=master)](https://travis-ci.org/47colborne/simple-currency-converter)
[![Code Climate](https://codeclimate.com/github/47colborne/simple-currency-converter/badges/gpa.svg)](https://codeclimate.com/github/47colborne/simple-currency-converter)

### To install:

``` ruby
gem "simple-currency-converter", git: "git@github.com:47colborne/simple-currency-converter.git"
```

### Tutorial/Example code:

``` ruby
client = CurrencyClient.new
client.get_exchange_rate(:USD, :CAD) => 1.3267
```
