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
metrics_api = MuxRuby::MetricsApi.new

# ========== list-breakdown-values ==========
breakdown = metrics_api.list_breakdown_values('video_startup_time', {:group_by => 'browser', :timeframe => ['7:days']})
assert breakdown != nil
assert breakdown.data != nil
puts "list-breakdown-values OK ✅"

# ========== get-overall-values ==========
overall = metrics_api.get_overall_values('video_startup_time', {:timeframe => ['7:days']})
assert overall != nil
assert overall.data != nil
puts "get-overall-values OK ✅"

# ========== list-insights ==========
insights = metrics_api.list_insights('video_startup_time', {:timeframe => ['7:days']})
assert insights != nil
assert insights.data != nil
puts "list-insights OK ✅"

# ========== get-metric-timeseries-data ==========
timeseries = metrics_api.get_metric_timeseries_data('video_startup_time', {:timeframe => ['7:days']})
assert timeseries != nil
assert timeseries.data != nil
puts "get-metric-timeseries-data OK ✅"

# ========== list-all-metric-values ==========
values = metrics_api.list_all_metric_values()
assert values != nil
assert values.data != nil
puts "list-all-metric-values OK ✅"
