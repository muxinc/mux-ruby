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
exports_api = MuxRuby::ExportsApi.new

# ========== list-errors ==========
exports = exports_api.list_exports()
assert exports != nil
assert exports.data != nil
assert exports.data.length > 0
puts "list-exports OK ✅"
