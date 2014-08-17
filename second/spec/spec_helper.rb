
#jr@oblique : 14 aug 2014


# Description: 	Specs helper. Mainly requierements and rspec config

require "tester"
require_relative '../lib/tester/account'


# Explicitely enable both syntaxes
# To avoid deprecation messages 
RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end

