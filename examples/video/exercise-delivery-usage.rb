#!/usr/bin/env ruby 

require 'mux_ruby'
require 'solid_assert'

SolidAssert.enable_assertions

# Authentication Setup
openapi = MuxRuby.configure do |config|
  config.username = ENV['MUX_TOKEN_ID']
  config.password = ENV['MUX_TOKEN_SECRET']
end

# API Client Initialization
usage_api = MuxRuby::DeliveryUsageApi.new

# ========== list-delivery-usage ==========
# Example with a valid timeframe:
# usage = usage_api.list_delivery_usage({:timeframe => ['1574175600', '1574305200']})
usage = usage_api.list_delivery_usage()
assert usage != nil
assert usage.data != nil
puts "list-delivery-usage OK ✅"