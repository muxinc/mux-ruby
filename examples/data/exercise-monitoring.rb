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
monitoring_api = MuxRuby::MonitoringApi.new

# Test coverage here isn't fantastic due to not knowning if the account we're testing against has
# any monitoring data. The behaviour has been manually verified against real-world data.

# ========== list-monitoring-dimensions ==========
dimensions = monitoring_api.list_monitoring_dimensions
assert dimensions != nil
assert dimensions.data != nil
assert dimensions.data.length > 0
assert dimensions.data.first.name != ''
assert dimensions.data.first.display_name != ''
puts "list-monitoring-dimensions OK ✅"

# ========== list-monitoring-metrics ==========
metrics = monitoring_api.list_monitoring_metrics
assert metrics != nil
assert metrics.data != nil
assert metrics.data.length > 0
assert metrics.data.first.name != ''
assert metrics.data.first.display_name != ''
puts "list-monitoring-metrics OK ✅"

# ========== get-monitoring-breakdown ==========
breakdown = monitoring_api.get_monitoring_breakdown('current-rebuffering-percentage', {:dimension => 'asn'})
assert breakdown != nil
assert breakdown.data != nil
puts "get-monitoring-breakdown OK ✅"

# ========== get-monitoring-histogram-timeseries ==========
histogram_timeseries = monitoring_api.get_monitoring_histogram_timeseries('video-startup-time')
assert histogram_timeseries != nil
assert histogram_timeseries.meta != nil
assert histogram_timeseries.meta.buckets != nil
assert histogram_timeseries.meta.buckets.length > 0
assert histogram_timeseries.data != nil
assert histogram_timeseries.data.length > 0
puts "get-monitoring-histogram-timeseries OK ✅"

# ========== get-monitoring-timeseries ==========
timeseries = monitoring_api.get_monitoring_timeseries('current-rebuffering-percentage')
assert timeseries != nil
assert timeseries.data != nil
assert timeseries.data.length > 0
assert timeseries.data.first.date != ''
puts "get-monitoring-timeseries OK ✅"
