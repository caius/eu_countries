# EU Countries

The [countries](http://rubygems.org/gems/countries) gem doesn't take into account whether countries are in the EU or not. So here's an extension to said gem that lists that information.

## Installation

In your Gemfile:

	gem "eu_countries"

## Usage

Get an array of EU country codes (ISO3611 alpha2 codes):

	ISO3611::EUCountry.codes

Get an array of `ISO3611::EUCountry` instances for all countries in the EU:

	ISO3611::EUCountry.all

## Disclaimer

This list is accurate to the best of my knowledge, but it's your own responsibility to double-check it before using it in anything. I generated the list from <http://www.hmrc.gov.uk/vat/managing/international/esl/country-codes.htm>.

## License

MIT License

Copyright (c) 2011 Brightbox Systems Ltd <hello@brightbox.co.uk>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
