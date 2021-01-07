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
dimensions_api = MuxRuby::DimensionsApi.new

# ========== list-dimensions ==========
dimensions = dimensions_api.list_dimensions()
assert dimensions != nil
assert dimensions.data != nil
assert dimensions.data.basic != nil
assert dimensions.data.advanced != nil
puts "list-dimensions OK ✅"

# ========== list-dimension-values ==========
dimension_values = dimensions_api.list_dimension_values("browser", {:timeframe => ['7:days']})
assert dimension_values != nil
assert dimension_values.data != nil
puts "list-dimension-values OK ✅"
