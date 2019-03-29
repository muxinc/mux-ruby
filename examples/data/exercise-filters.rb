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
filters_api = MuxRuby::FiltersApi.new

# ========== list-filters ==========
filters = filters_api.list_filters()
assert filters != nil
assert filters.data != nil
assert filters.data.basic != nil
assert filters.data.advanced != nil
puts "list-filters OK ✅"

# ========== list-filter-values ==========
filter_values = filters_api.list_filter_values("browser", {:timeframe => ['7:days']})
assert filter_values != nil
assert filter_values.data != nil
puts "list-filter-values OK ✅"
