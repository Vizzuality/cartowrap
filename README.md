# Cartowrap
This gem provides a simple wraper for Cartodb SQL and Sync API. More features coming soon.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'cartowrap'
```

And then execute:
```bash
$ bundle
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
country_isos = JSON.parse(api.response)
```

## Usage with rails
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

## Contributing
Feel free to contribute pull requests are welcome.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
