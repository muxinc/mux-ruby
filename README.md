![Mux Ruby Banner](github-ruby-sdk.png)

![](https://github.com/muxinc/mux-ruby/workflows/Integration%20Test/badge.svg)

# Mux Ruby

Official Mux API wrapper for ruby projects, supporting both Mux Data and Mux Video.

[Mux Video](https://mux.com/video) is an API-first platform, powered by data and designed by video experts to make beautiful video possible for every development team.

[Mux Data](https://mux.com/data) is a platform for monitoring your video streaming performance with just a few lines of code. Get in-depth quality of service analytics on web, mobile, and OTT devices.

Not familiar with Mux? Check out https://mux.com/ for more information.

## Requirements

Ruby 1.9.

Use `bundle install` to install dependencies if you're developing locally.

## Installation

### Adding to your Gemfile

This gem can be sourced from [RubyGems](https://rubygems.org/gems/mux_ruby)

```
gem 'mux_ruby'
```

### Clone and install locally
```
git clone https://github.com/muxinc/mux-ruby.git && cd mux-ruby
gem build mux_ruby.gemspec
gem install mux_ruby.gem
```

## Getting Started

### Overview

Mux Ruby is a code generated lightweight wrapper around the Mux REST API and reflects them accurately. This has a few consequences you should watch out for:

1) For almost all API responses, the object you're looking for will be in the `data` field on the API response object, as in the example below. This is because we designed our APIs with similar concepts to the [JSON:API](https://jsonapi.org/) standard. This means we'll be able to return more metadata from our API calls (such as related entities) without the need to make breaking changes to our APIs. We've decided not to hide that in this library.

2) We don't use a lot of object orientation. For example API calls that happen on a single asset don't exist in the asset class, but are API calls in the AssetsApi which require an asset ID.

### Authentication
To use the Mux API, you'll need an access token and a secret. [Details on obtaining these can be found here in the Mux documentation.](https://docs.mux.com/docs#section-1-get-an-api-access-token)

Its up to you to manage your token and secret. In our examples, we read them from `MUX_TOKEN_ID` and `MUX_TOKEN_SECRET` in your environment.

### Example Usage
Below is a quick example of using Mux Ruby to list the Video assets stored in your Mux account.

Be sure to also checkout the [exmples directory](examples/):
* [List Assets, Live Streams, Signing Keys, and Uploads.](examples/video/list-everything.rb)
* [Create an Asset, wait for it to become availiable, and print its playback URL](examples/video/ingest.rb)
* [Create a new Live Stream and retrieve its Stream key.](examples/video/create-live-stream.rb)

There's also example usage of every API call (also used for testing):
* [Video](examples/video/)
  * [Assets](examples/video/exercise-assets.rb)
  * [Live Streams](examples/video/exercise-live-streams.rb)
  * [Signing Keys](examples/video/exercise-signing-keys.rb)
  * [Uploads](examples/video/exercise-uploads.rb)
* [Data](examples/data/)
  * [Errors](examples/data/exercise-errors.rb)
  * [Exports](examples/data/exercise-exports.rb)
  * [Filters](examples/data/exercise-filters.rb)
  * [Metrics](examples/data/exercise-metrics.rb)
  * [Video Views](examples/data/exercise-video-views.rb)

```ruby
#!/usr/bin/env ruby

require 'mux_ruby'

# Auth Setup
openapi = MuxRuby.configure do |config|
  config.username = ENV['MUX_TOKEN_ID']
  config.password = ENV['MUX_TOKEN_SECRET']
end

# API Client Init
assets_api = MuxRuby::AssetsApi.new

# List Assets
puts "Listing Assets in account:\n\n"

assets = assets_api.list_assets()
assets.data.each do | asset |
  puts "Asset ID: #{asset.id}"
  puts "Status: #{asset.status}"
  puts "Duration: #{asset.duration.to_s}\n\n"
end
```

## Exceptions & Error Handling

All errors inherit from `ApiError`, you can catch it or you can catch one of the more specific Errors below.

### NotFoundError

`NotFoundError` is thrown when a resource is not found. This is useful when trying to get an entity by its ID, for example `get_asset("some-id-here")` in the AssetsApi.

### UnauthorizedError

`UnauthorizedError` is thrown when Mux cannot authenticate your request. [You should check you have configured your credentials correctly.](#authentication)

### ServiceError

`ServiceError` is thrown when Mux returns a HTTP 5XX Status Code. If you encounter this reproducibly, please get in touch with [support@mux.com](mailto:support@mux.com).

## Documentation

[Be sure to check out the documentation in the `docs` directory.](docs/)

## Issues

If you run into problems, [please raise a GitHub issue,](https://github.com/muxinc/mux-ruby/issues) filling in the issue template. We'll take a look as soon as possible.

## Contributing

Please do not submit PRs against this package. It is generated from our OpenAPI definitions - [Please open an issue instead!](https://github.com/muxinc/mux-ruby/issues)

## License

[MIT License.](LICENSE) Copyright 2019 Mux, Inc.
