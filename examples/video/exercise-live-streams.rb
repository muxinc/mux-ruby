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
live_api = MuxRuby::LiveStreamsApi.new

# ========== create-live-stream ==========
create_asset_request = MuxRuby::CreateAssetRequest.new
create_asset_request.playback_policy = [MuxRuby::PlaybackPolicy::PUBLIC]
create_live_stream_request = MuxRuby::CreateLiveStreamRequest.new
create_live_stream_request.new_asset_settings = create_asset_request
create_live_stream_request.playback_policy = [MuxRuby::PlaybackPolicy::PUBLIC]
stream = live_api.create_live_stream(create_live_stream_request)
assert stream != nil
assert stream.data != nil
assert stream.data.id != nil
puts "create-live-stream OK ✅"

# ========== list-live-streams ==========
streams = live_api.list_live_streams()
assert streams != nil
assert streams.data != nil
assert streams.data.first.id == stream.data.id
puts "list-live-streams OK ✅"

# ========== get-live-stream ==========
stream_get = live_api.get_live_stream(stream.data.id)
assert stream_get != nil
assert stream_get.data != nil
assert stream_get.data.id == stream.data.id
puts "get-live-stream OK ✅"

# ========== create-live-stream-playback-id ==========
create_playback_id_request = MuxRuby::CreatePlaybackIDRequest.new
create_playback_id_request.policy = MuxRuby::PlaybackPolicy::SIGNED
playback_id = live_api.create_live_stream_playback_id(stream.data.id, create_playback_id_request)
assert playback_id != nil
assert playback_id.data != nil
assert playback_id.data.id != nil
assert playback_id.data.policy == "signed"
puts "create-live-stream-playback-id OK ✅"

# ========== delete-live-stream-playback-id ==========
live_api.delete_live_stream_playback_id(stream.data.id, playback_id.data.id)
stream_after_delete = live_api.get_live_stream(stream.data.id)
assert stream_after_delete != nil
assert stream_after_delete.data != nil
assert stream_after_delete.data.id == stream.data.id
assert stream_after_delete.data.playback_ids.length == 1
assert stream_after_delete.data.playback_ids.first.policy == "public"
puts "delete-live-stream-playback-id OK ✅"

# ========== reset-stream-key ==========
reset_key = live_api.reset_stream_key(stream.data.id)
assert reset_key != nil
assert reset_key.data != nil
assert reset_key.data.id == stream.data.id
assert reset_key.data.stream_key != stream.data.stream_key
puts "delete-live-stream-playback-id OK ✅"

# ========== signal-live-stream-complete ==========
begin
    live_api.signal_live_stream_complete(stream.data.id)
rescue MuxRuby::ApiError => e
    puts "Should not have errored when marking stream complete"
    exit 1
end
puts "signal-live-stream-complete OK ✅"

# ========== delete-live-stream ==========
live_api.delete_live_stream(stream.data.id)
begin
  live_api.get_live_stream(stream.data.id)
  puts 'Should have errored here.'
  exit 255
rescue MuxRuby::NotFoundError => e
  assert e != nil
end
puts "delete-live-stream OK ✅"