#!/usr/bin/env ruby

require 'mux_ruby'

# Authentication Setup
openapi = MuxRuby.configure do |config|
  config.username = ENV['MUX_TOKEN_ID']
  config.password = ENV['MUX_TOKEN_SECRET']
end

# API Client Initialization
assets_api = MuxRuby::AssetsApi.new

# ========== create-asset ==========
car = MuxRuby::CreateAssetRequest.new
car.input = 'https://storage.googleapis.com/muxdemofiles/mux-video-intro.mp4'
create_response = assets_api.create_asset(car)
puts "create-asset OK ✅"

# ========== list-assets ==========
assets = assets_api.list_assets()
puts "list-assets OK ✅"

# Wait for the asset to become ready...
if create_response.data.status != 'ready'
  puts "    waiting for asset to become ready..."
  while true do
    # ========== get-asset ==========
    asset = assets_api.get_asset(create_response.data.id)
    if asset.data.status != 'ready'
      puts "Asset not ready yet, sleeping..."
      sleep(1)
    else
      puts "Asset ready checking input info."
      # ========== get-asset-input-info ==========
      input_info = assets_api.get_asset_input_info(asset.data.id)
      break
    end
  end
end
puts "get-asset OK ✅"
puts "get-asset-input-info OK ✅"

# ========== create-asset-playback-id ==========
cpbr = MuxRuby::CreatePlaybackIDRequest.new
cpbr.policy = MuxRuby::PlaybackPolicy::PUBLIC
pb_id_c = assets_api.create_asset_playback_id(create_response.data.id, cpbr)
puts "create-asset-playback-id OK ✅"

# ========== get-asset-playback-id ==========
pb_id = assets_api.get_asset_playback_id(create_response.data.id, pb_id_c.data.id)
puts "get-asset-playback-id OK ✅"

# ========== update-asset-mp4-support ==========
mp4_req = MuxRuby::UpdateAssetMP4SupportRequest.new
mp4_req.mp4_support = 'standard'
mp4_asset = assets_api.update_asset_mp4_support(create_response.data.id, mp4_req)
puts "update-asset-mp4-support OK ✅"

# ========== delete-asset-playback-id ==========
assets_api.delete_asset_playback_id(create_response.data.id, pb_id_c.data.id)
puts "delete-asset-playback-id OK ✅"

# ========== delete-asset ==========
assets_api.delete_asset(create_response.data.id)
puts "delete-asset OK ✅"