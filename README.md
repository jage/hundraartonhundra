# Hundraartonhundra (118100)

Ruby library for talking to 118100 API. 118100 is a Swedish telephone directory service.

# Development

_This is work in progress_

* Uses `Hashie::Mash`, this is just a hack and will be removed in the future.
* Haven't pushed gem to [Rubygems](https://rubygems.org), will do when version is 1.0.0

# Requirements

* API key from 118100, get it at the [registration page](http://utveckling.118100.se/node/10)
* Ruby 1.9 or 2.0

# Example

Set API key to environment variable `HUNDRAARTONHUNDRA_KEY` or pass it to the object.

Hundraartonhundra uses [Nori](https://github.com/savonrb/nori) to parse XML and returns a [Hashie::Mash](https://github.com/intridea/hashie).

```Ruby
client = Hundraartonhundra::Client.new(api_key)
result = client.query('polisen')
# => { ... }
```

