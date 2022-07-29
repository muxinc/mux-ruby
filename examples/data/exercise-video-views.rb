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
views_api = MuxRuby::VideoViewsApi.new

# ========== list-video-views ==========
video_views = views_api.list_video_views()
puts "JSMITH: " + video_views.data.first.id
assert video_views != nil
assert video_views.data != nil
assert video_views.data.first != nil
assert video_views.data.first.id != nil
puts "list-video_views OK ✅"

# ========== get-video-view ==========
view = views_api.get_video_view(video_views.data.first.id)
puts "JSMITH: " + view.data.id
assert view != nil
assert view.data != nil
assert view.data.id == video_views.data.first.id
puts "get-video-view OK ✅"
