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
errors_api = MuxRuby::ErrorsApi.new

# ========== list-errors ==========
errors = errors_api.list_errors(:filters => ['browser:Safari'], :timeframe => ['7:days'])
assert errors != nil
assert errors.data != nil
assert errors.data.length > 0
assert errors.data.first.id != nil
puts "list-errors OK ✅"
