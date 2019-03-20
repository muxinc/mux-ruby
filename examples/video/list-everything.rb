#!/usr/bin/env ruby

require 'mux_ruby'

# Auth Setup
openapi = MuxRuby.configure do |config|
  config.username = ENV['MUX_TOKEN_ID']
  config.password = ENV['MUX_TOKEN_SECRET']
end

# API Client Init
assets_api = MuxRuby::AssetsApi.new
uploads_api = MuxRuby::DirectUploadsApi.new
live_api = MuxRuby::LiveStreamsApi.new
keys_api = MuxRuby::URLSigningKeysApi.new

# List Assets
puts "Listing Assets:\n\n"
assets = assets_api.list_assets()
assets.data.each do | asset |
  puts "Asset ID: #{asset.id}"
  puts "Status: #{asset.status}"
  puts "Duration: #{asset.duration.to_s}\n\n"
end

# List Live Streams
puts "Listing Live Streams:\n\n"
streams = live_api.list_live_streams()
streams.data.each do | stream |
  puts "Live Stream ID: #{stream.id}"
  puts "Strean: #{stream.status}"
  puts "Stream Key: #{stream.stream_key}\n\n"
end

# List Direct Uploads
puts "Listing Direct Uploads:\n\n"
uploads = uploads_api.list_direct_uploads()
uploads.data.each do | upload |
  puts "Status: #{upload.status}"
  puts "Asset ID: #{upload.asset_id}\n\n"
end

# List Signing Keys
puts "Listing Signing Keys:\n\n"
keys = keys_api.list_url_signing_keys()
keys.data.each do | key |
  puts "Signing Key ID: #{key.id}\n\n"
end
