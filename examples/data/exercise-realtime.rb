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
rt_api = MuxRuby::RealTimeApi.new

# Test coverage here isn't fantastic due to not knowning if the account we're testing against has
# any real-time data. The behaviour has been manually verified against real-world data.

# ========== list-realtime-dimensions ==========
dimensions = rt_api.list_realtime_dimensions
assert dimensions != nil
assert dimensions.data != nil
assert dimensions.data.length > 0
assert dimensions.data.first.name != ''
assert dimensions.data.first.display_name != ''
puts "list-realtime-dimensions OK ✅"

# ========== list-realtime-metrics ==========
metrics = rt_api.list_realtime_metrics
assert metrics != nil
assert metrics.data != nil
assert metrics.data.length > 0
assert metrics.data.first.name != ''
assert metrics.data.first.display_name != ''
puts "list-realtime-metrics OK ✅"

# ========== get-realtime-breakdown ==========
breakdown = rt_api.get_realtime_breakdown('current-rebuffering-percentage', {:dimension => 'asn'})
assert breakdown != nil
assert breakdown.data != nil
puts "get-realtime-breakdown OK ✅"

# ========== get-realtime-histogram-timeseries ==========
histogram_timeseries = rt_api.get_realtime_histogram_timeseries('playback-failure-percentage')
assert histogram_timeseries != nil
assert histogram_timeseries.meta != nil
assert histogram_timeseries.meta.buckets != nil
assert histogram_timeseries.meta.buckets.length > 0
assert histogram_timeseries.data != nil
assert histogram_timeseries.data.length > 0
puts "get-realtime-histogram-timeseries OK ✅"

# ========== get-realtime-timeseries ==========
timeseries = rt_api.get_realtime_timeseries('current-rebuffering-percentage')
assert timeseries != nil
assert timeseries.data != nil
assert timeseries.data.length > 0
assert timeseries.data.first.date != ''
puts "get-realtime-timeseries OK ✅"
