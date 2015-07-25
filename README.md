# OmniAuth linkus

linkus OAuth2 Strategy for OmniAuth.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-linkus'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-linkus

## Usage

It is necessary to start the [linkus](https://github.com/SLP-KBIT/linkus) app.  
And, add to your config/initializers/devise.rb
```rb
config.omniauth :linkus, ENV['LINKUS_APP_ID'], ENV['LINKUS_APP_SECRET'], client_options: {
  site: ENV['LINKUS_URL'],
  authorize_url: ENV['LINKUS_URL'] + '/oauth/authorize',
  token_url: ENV['LINKUS_URL'] + '/oauth/token'
}
```

