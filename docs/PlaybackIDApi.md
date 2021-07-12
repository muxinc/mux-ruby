# MuxRuby::PlaybackIDApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_asset_or_livestream_id**](PlaybackIDApi.md#get_asset_or_livestream_id) | **GET** /video/v1/playback-ids/{PLAYBACK_ID} | Retrieve an Asset or Live Stream ID |


## get_asset_or_livestream_id

> <GetAssetOrLiveStreamIdResponse> get_asset_or_livestream_id(playback_id)

Retrieve an Asset or Live Stream ID

Retrieves the Identifier of the Asset or Live Stream associated with the Playback ID.

### Examples

```ruby
require 'time'
require 'mux_ruby'
# setup authorization
MuxRuby.configure do |config|
  # Configure HTTP basic authorization: accessToken
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = MuxRuby::PlaybackIDApi.new
playback_id = 'playback_id_example' # String | The live stream's playback ID.

begin
  # Retrieve an Asset or Live Stream ID
  result = api_instance.get_asset_or_livestream_id(playback_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackIDApi->get_asset_or_livestream_id: #{e}"
end
```

#### Using the get_asset_or_livestream_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetOrLiveStreamIdResponse>, Integer, Hash)> get_asset_or_livestream_id_with_http_info(playback_id)

```ruby
begin
  # Retrieve an Asset or Live Stream ID
  data, status_code, headers = api_instance.get_asset_or_livestream_id_with_http_info(playback_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetOrLiveStreamIdResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackIDApi->get_asset_or_livestream_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **playback_id** | **String** | The live stream&#39;s playback ID. |  |

### Return type

[**GetAssetOrLiveStreamIdResponse**](GetAssetOrLiveStreamIdResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

