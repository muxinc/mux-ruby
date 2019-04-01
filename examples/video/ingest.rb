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
assets_api = MuxRuby::AssetsApi.new

# Create an Asset
car = MuxRuby::CreateAssetRequest.new
car.input = 'https://storage.googleapis.com/muxdemofiles/mux-video-intro.mp4'
car.playback_policy = [MuxRuby::PlaybackPolicy::PUBLIC]
create_response = assets_api.create_asset(car)
puts "Created Asset ID: #{create_response.data.id}"

# Wait for the asset to become ready, then print its URL
if create_response.data.status != 'ready'
  puts "Waiting for asset to become ready..."
  while true do
    asset = assets_api.get_asset(create_response.data.id)
    if asset.data.status != 'ready'
      puts "Asset not ready yet, sleeping..."
      sleep(1)
    else
      puts "Asset ready! Playback URL: https://stream.mux.com/#{create_response.data.playback_ids.first.id}.m3u8"
      break
    end
  end
end
