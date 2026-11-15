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
playback_ids_api = MuxRuby::PlaybackIDApi.new

# ========== create-live-stream ==========
create_asset_request = MuxRuby::CreateAssetRequest.new
create_asset_request.playback_policy = [MuxRuby::PlaybackPolicy::PUBLIC]
create_live_stream_request = MuxRuby::CreateLiveStreamRequest.new
create_live_stream_request.new_asset_settings = create_asset_request
create_live_stream_request.playback_policy = [MuxRuby::PlaybackPolicy::PUBLIC]
create_live_stream_request.reduced_latency = true
stream = live_api.create_live_stream(create_live_stream_request)
assert stream != nil
assert stream.data != nil
assert stream.data.id != nil
puts "create-live-stream OK ✅"

# ========== update-live-stream ==========
updated_stream = live_api.update_live_stream(stream.data.id, { latency_mode: 'standard', reconnect_window: 35 })
assert updated_stream.data.latency_mode == 'standard'
assert updated_stream.data.reconnect_window == 35
puts "update-live-stream OK ✅"

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

# ========== get-asset-or-livestream-id ==========
playback_id = stream.data.playback_ids.first.id
get_playback_id_resp = playback_ids_api.get_asset_or_livestream_id(playback_id).data
assert get_playback_id_resp.object.id == stream.data.id
assert get_playback_id_resp.object.type == "live_stream"
puts "get-asset-or-livestream-id OK ✅"

# ========== create-live-stream-simulcast-target ==========
create_simulcast_target = MuxRuby::CreateSimulcastTargetRequest.new
create_simulcast_target.passthrough = 'foo'
create_simulcast_target.stream_key = 'bar'
create_simulcast_target.url = 'rtmp://dontforgettolikeand.subscribe'
target = live_api.create_live_stream_simulcast_target(stream.data.id, create_simulcast_target)
assert target != nil
assert target.data != nil
puts "create-live-stream-simulcast-target OK ✅"

# ========== get-live-stream-simulcast-target ==========
target_get = live_api.get_live_stream_simulcast_target(stream.data.id, target.data.id)
assert target_get != nil
assert target_get.data != nil
assert target.data.id == target_get.data.id
puts "get-live-stream-simulcast-target OK ✅"

# ========== delete-live-stream-simulcast-target ==========
live_api.delete_live_stream_simulcast_target(stream.data.id, target.data.id)
puts "delete-live-stream-simulcast-target OK ✅"
stream_no_target = live_api.get_live_stream(stream.data.id)
assert stream_no_target != nil
assert stream_no_target.data != nil
assert stream_no_target.data.simulcast_targets == nil
puts "delete-live-stream-simulcast-target OK ✅"

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
puts "reset-stream-key OK ✅"

# ========== signal-live-stream-complete ==========
begin
    live_api.signal_live_stream_complete(stream.data.id)
rescue MuxRuby::ApiError => e
    puts "Should not have errored when marking stream complete"
    exit 1
end
puts "signal-live-stream-complete OK ✅"

# ========== disable-live-stream ==========
begin
  live_api.disable_live_stream(stream.data.id)
  disabled_live_stream = live_api.get_live_stream(stream.data.id)
  assert disabled_live_stream.data.status == 'disabled'
rescue MuxRuby::ApiError => e
  puts "Should not have errored when disabling stream"
  exit 1
end
puts "disable-live-stream OK ✅"

# ========== enable-live-stream ==========
begin
  live_api.enable_live_stream(stream.data.id)
  enabled_live_stream = live_api.get_live_stream(stream.data.id)
  assert enabled_live_stream.data.status == 'idle'
rescue MuxRuby::ApiError => e
  puts "Should not have errored when enabling stream"
  exit 1
end
puts "enable-live-stream OK ✅"

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