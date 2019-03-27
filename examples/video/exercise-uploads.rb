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
uploads_api = MuxRuby::DirectUploadsApi.new

# ========== create-direct-upload ==========
create_asset_request = MuxRuby::CreateAssetRequest.new
create_asset_request.playback_policy = [MuxRuby::PlaybackPolicy::PUBLIC]
create_upload_request = MuxRuby::CreateUploadRequest.new
create_upload_request.new_asset_settings = create_asset_request
create_upload_request.timeout = 3600
create_upload_request.cors_origin = "philcluff.co.uk"
upload = uploads_api.create_direct_upload(create_upload_request)
assert upload != nil
assert upload.data != nil
assert upload.data.id != nil
puts "create-direct-upload OK ✅"

# ========== list-direct-uploads ==========
uploads = uploads_api.list_direct_uploads()
assert uploads.data != nil
assert uploads.data.first.id == upload.data.id
puts "list-direct-uploads OK ✅"

# ========== get-direct-upload ==========
upload_get = uploads_api.get_direct_upload(upload.data.id)
assert upload_get != nil
assert upload_get.data != nil
assert upload_get.data.id == upload.data.id
puts "get-direct-upload OK ✅"

# ========== cancel-direct-upload ==========
cancelled_upload = uploads_api.cancel_direct_upload(upload.data.id)
assert cancelled_upload != nil
assert cancelled_upload.data != nil
assert cancelled_upload.data.id == upload.data.id
assert cancelled_upload.data.status == "cancelled"
puts "cancel-direct-upload OK ✅"
