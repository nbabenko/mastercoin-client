source "http://rubygems.org"

# Specify your gem's dependencies in bitcoind-client.gemspec
gemspec
gem 'bitcoin-client', :github => 'holytransaction/bitcoin-client'

platforms :ruby_18 do
  gem 'json', '~> 1.5.3'
end

platforms :jruby do
  gem 'json', '~> 1.5.3'
  gem 'jruby-openssl'
end
