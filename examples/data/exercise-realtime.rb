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

# dimensions = rt_api.list_realtime_dimensions
# puts dimensions

# metrics = rt_api.list_realtime_metrics
# puts metrics

# breakdown = rt_api.get_realtime_breakdown('current-rebuffering-percentage', {:dimension => 'asn'})
# puts breakdown

histogram_timeseries = rt_api.get_realtime_histogram_timeseries('video-startup-time')
puts histogram_timeseries

# timeseries = rt_api.get_realtime_timeseries('current-rebuffering-percentage')
# puts timeseries
