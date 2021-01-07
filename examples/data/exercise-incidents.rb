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
incidents_api = MuxRuby::IncidentsApi.new

# Test coverage here is poor due to not knowning if the account we're testing against has any incidents.

# ========== list-incidents ==========
incidents = incidents_api.list_incidents
assert incidents != nil
assert incidents.data != nil
puts "list-incidents OK ✅"

# ========== get-incident ==========
puts "get-incident SKIP ⚠️"

# ========== list-related-incidents ==========
puts "list-related-incidents SKIP ⚠️"
