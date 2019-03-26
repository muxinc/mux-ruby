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
keys_api = MuxRuby::URLSigningKeysApi.new

# ========== create-url-signing-key ==========
key = keys_api.create_url_signing_key()
assert key != nil
assert key.data.id != nil
assert key.data.private_key != nil
puts "create-url-signing-key OK ✅"

# ========== list-url-signing-keys ==========
keys = keys_api.list_url_signing_keys()
assert keys != nil
assert keys.data.first != nil
assert keys.data.first.id = key.data.id
assert keys.data.first.private_key == nil
puts "list-url-signing-keys OK ✅"

# ========== get-url-signing-key ==========
key_get = keys_api.get_url_signing_key(key.data.id)
assert key_get.data != nil
puts "get-url-signing-key OK ✅"

# ========== delete-url-signing-key ==========
keys_api.delete_url_signing_key(key.data.id)
begin
    deleted_key = keys_api.get_url_signing_key(key.data.id)
    puts 'Should have errored here.'
    exit 255
rescue MuxRuby::ApiError => e
    assert e != nil
end
puts "delete-url-signing-key OK ✅"