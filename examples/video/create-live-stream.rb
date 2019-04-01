#!/usr/bin/env ruby

require 'mux_ruby'

# Auth Setup
openapi = MuxRuby.configure do |config|
  config.username = ENV['MUX_TOKEN_ID']
  config.password = ENV['MUX_TOKEN_SECRET']
end

# API Client Init
live_api = MuxRuby::LiveStreamsApi.new

# Create the Live Stream
create_asset_request = MuxRuby::CreateAssetRequest.new
create_asset_request.playback_policy = [MuxRuby::PlaybackPolicy::PUBLIC]
create_live_stream_request = MuxRuby::CreateLiveStreamRequest.new
create_live_stream_request.new_asset_settings = create_asset_request
create_live_stream_request.playback_policy = [MuxRuby::PlaybackPolicy::PUBLIC]
stream = live_api.create_live_stream(create_live_stream_request)

# Give back the RTMP entry point playback endpoint
puts "New Live Stream created!"
puts "RTMP Endpoint: rtmp://live.mux.com/app"
puts "Stream Key: #{stream.data.stream_key}"
