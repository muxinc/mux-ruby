#!/usr/bin/env ruby

require 'mux_ruby'

# Auth Setup
openapi = MuxRuby.configure do |config|
  config.username = ENV['MUX_TOKEN_ID']
  config.password = ENV['MUX_TOKEN_SECRET']
end

# API Client Init
assets_api = MuxRuby::AssetsApi.new

# List Assets
puts "Listing Assets in account:\n\n"

assets = assets_api.list_assets()
assets.data.each do | asset |
  puts "Asset ID: #{asset.id}"
  puts "Status: #{asset.status}"
  puts "Duration: #{asset.duration.to_s}\n\n"
end