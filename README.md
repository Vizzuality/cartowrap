# Cartowrap

[![Build Status](https://travis-ci.org/Vizzuality/cartowrap.svg?branch=master)](https://travis-ci.org/Vizzuality/cartowrap)

This gem provides a simple wrapper for Cartodb SQL and Sync API. More features coming soon.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'cartowrap'
```

And then execute:
```bash
$ bundle install
```

Or install it yourself as:
```bash
$ gem install cartowrap
```

## Usage

```ruby
require 'cartowrap'
api = Cartowrap::API.new(your_api_key, your_account)
api.send_query('select * from country_isos')
country_ison = JSON.parse(api.response)
```

### Usage with Rails

See also [Cartomodel](https://github.com/Vizzuality/cartomodel) for Activerecord integration

You can configure Cartowrap in an initializer
```ruby
#config/initializers/cartowrap.rb
require 'cartowrap'
Cartowrap.configure do |config|
  config.account = your_cartodb_account
  config.api_key = your_api_key
end

# Any other place in your code 
api_call = Cartowrap::API.new
```

## Current methods

```ruby
send_query(query)
get_synchronizations
get_synchronization(import_id)
check_synchronization(import_id)
force_synchronization(import_id)
create_synchronization(url, interval, sync_options={})
delete_synchronization(import_id)
```

## Config reference

If you want to use the gem in dry run mode (no calls actually made to the CartoDB API), set:

```ruby
Cartowrap.configure do |config|
  config.dry_run = true
end
```

## Contributing
Feel free to contribute pull requests are welcome.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
