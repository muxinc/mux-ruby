#!/usr/bin/env ruby

# To use without building and installing the gem: ruby -Iruby-sdk/lib ruby-demo.rb
# To ingest a new video use "ingest" as the first argument

require 'mux_ruby'

# Auth Setup
openapi = MuxRuby.configure do |config|
  config.username = ENV['MUX_TOKEN_ID']
  config.password = ENV['MUX_TOKEN_SECRET']
  # Uncomment for very verbose debugging.
  # config.debugging = true
end

# API Client Init
api_instance = MuxRuby::AssetsApi.new

# Ingest a new Asset via a string input. Set a public playback policy.
if ARGV.first.eql? 'ingest'
  puts "Ingesting new asset...\n"
  car = MuxRuby::CreateAssetRequest.new
  car.input = 'http://movietrailers.apple.com/movies/wb/the-lego-ninjago-movie/the-lego-ninjago-movie-trailer-2_h720p.mov'
  car.playback_policy = ['public']
  create_response = api_instance.create_asset(:create_asset_request => car)
  puts "Ingested new Asset ID #{create_response.data.id}\n"
end

# List Assets
puts "Listing Assets in account:\n\n"
begin
  result = api_instance.list_assets()
  result.data.each do | asset |
    puts "Asset ID: #{asset.id}"
    puts "Status: #{asset.status}"
    puts "Duration: #{asset.duration.to_s}\n\n"
  end
rescue MuxRuby::ApiError => e
  puts "Exception when calling AssetsApi->list_assets: #{e}"
end
