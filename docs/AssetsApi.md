# MuxRuby::AssetsApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_asset**](AssetsApi.md#create_asset) | **POST** /video/v1/assets | Create an asset |
| [**create_asset_playback_id**](AssetsApi.md#create_asset_playback_id) | **POST** /video/v1/assets/{ASSET_ID}/playback-ids | Create a playback ID |
| [**create_asset_static_rendition**](AssetsApi.md#create_asset_static_rendition) | **POST** /video/v1/assets/{ASSET_ID}/static-renditions | Create a static rendition for an asset |
| [**create_asset_track**](AssetsApi.md#create_asset_track) | **POST** /video/v1/assets/{ASSET_ID}/tracks | Create an asset track |
| [**delete_asset**](AssetsApi.md#delete_asset) | **DELETE** /video/v1/assets/{ASSET_ID} | Delete an asset |
| [**delete_asset_playback_id**](AssetsApi.md#delete_asset_playback_id) | **DELETE** /video/v1/assets/{ASSET_ID}/playback-ids/{PLAYBACK_ID} | Delete a playback ID |
| [**delete_asset_static_rendition**](AssetsApi.md#delete_asset_static_rendition) | **DELETE** /video/v1/assets/{ASSET_ID}/static-renditions/{STATIC_RENDITION_ID} | Delete a single static rendition for an asset |
| [**delete_asset_track**](AssetsApi.md#delete_asset_track) | **DELETE** /video/v1/assets/{ASSET_ID}/tracks/{TRACK_ID} | Delete an asset track |
| [**generate_asset_track_subtitles**](AssetsApi.md#generate_asset_track_subtitles) | **POST** /video/v1/assets/{ASSET_ID}/tracks/{TRACK_ID}/generate-subtitles | Generate track subtitles |
| [**get_asset**](AssetsApi.md#get_asset) | **GET** /video/v1/assets/{ASSET_ID} | Retrieve an asset |
| [**get_asset_input_info**](AssetsApi.md#get_asset_input_info) | **GET** /video/v1/assets/{ASSET_ID}/input-info | Retrieve asset input info |
| [**get_asset_playback_id**](AssetsApi.md#get_asset_playback_id) | **GET** /video/v1/assets/{ASSET_ID}/playback-ids/{PLAYBACK_ID} | Retrieve a playback ID |
| [**list_assets**](AssetsApi.md#list_assets) | **GET** /video/v1/assets | List assets |
| [**update_asset**](AssetsApi.md#update_asset) | **PATCH** /video/v1/assets/{ASSET_ID} | Update an asset |
| [**update_asset_master_access**](AssetsApi.md#update_asset_master_access) | **PUT** /video/v1/assets/{ASSET_ID}/master-access | Update master access |
| [**update_asset_mp4_support**](AssetsApi.md#update_asset_mp4_support) | **PUT** /video/v1/assets/{ASSET_ID}/mp4-support | Update MP4 support |


## create_asset

> <AssetResponse> create_asset(create_asset_request)

Create an asset

Create a new Mux Video asset.

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

api_instance = MuxRuby::AssetsApi.new
create_asset_request = MuxRuby::CreateAssetRequest.new # CreateAssetRequest | 

begin
  # Create an asset
  result = api_instance.create_asset(create_asset_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->create_asset: #{e}"
end
```

#### Using the create_asset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssetResponse>, Integer, Hash)> create_asset_with_http_info(create_asset_request)

```ruby
begin
  # Create an asset
  data, status_code, headers = api_instance.create_asset_with_http_info(create_asset_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssetResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->create_asset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_asset_request** | [**CreateAssetRequest**](CreateAssetRequest.md) |  |  |

### Return type

[**AssetResponse**](AssetResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_asset_playback_id

> <CreatePlaybackIDResponse> create_asset_playback_id(asset_id, create_playback_id_request)

Create a playback ID

Creates a playback ID that can be used to stream the asset to a viewer.

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.
create_playback_id_request = MuxRuby::CreatePlaybackIDRequest.new # CreatePlaybackIDRequest | 

begin
  # Create a playback ID
  result = api_instance.create_asset_playback_id(asset_id, create_playback_id_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->create_asset_playback_id: #{e}"
end
```

#### Using the create_asset_playback_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePlaybackIDResponse>, Integer, Hash)> create_asset_playback_id_with_http_info(asset_id, create_playback_id_request)

```ruby
begin
  # Create a playback ID
  data, status_code, headers = api_instance.create_asset_playback_id_with_http_info(asset_id, create_playback_id_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePlaybackIDResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->create_asset_playback_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The asset ID. |  |
| **create_playback_id_request** | [**CreatePlaybackIDRequest**](CreatePlaybackIDRequest.md) |  |  |

### Return type

[**CreatePlaybackIDResponse**](CreatePlaybackIDResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_asset_static_rendition

> <CreateStaticRenditionResponse> create_asset_static_rendition(asset_id, create_static_rendition_request)

Create a static rendition for an asset

Creates a static rendition (i.e. MP4) for an asset

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.
create_static_rendition_request = MuxRuby::CreateStaticRenditionRequest.new # CreateStaticRenditionRequest | 

begin
  # Create a static rendition for an asset
  result = api_instance.create_asset_static_rendition(asset_id, create_static_rendition_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->create_asset_static_rendition: #{e}"
end
```

#### Using the create_asset_static_rendition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStaticRenditionResponse>, Integer, Hash)> create_asset_static_rendition_with_http_info(asset_id, create_static_rendition_request)

```ruby
begin
  # Create a static rendition for an asset
  data, status_code, headers = api_instance.create_asset_static_rendition_with_http_info(asset_id, create_static_rendition_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStaticRenditionResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->create_asset_static_rendition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The asset ID. |  |
| **create_static_rendition_request** | [**CreateStaticRenditionRequest**](CreateStaticRenditionRequest.md) |  |  |

### Return type

[**CreateStaticRenditionResponse**](CreateStaticRenditionResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_asset_track

> <CreateTrackResponse> create_asset_track(asset_id, create_track_request)

Create an asset track

Adds an asset track (for example, subtitles, or an alternate audio track) to an asset. Assets must be in the `ready` state before tracks can be added.

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.
create_track_request = MuxRuby::CreateTrackRequest.new({url: 'url_example', type: 'text', text_type: 'subtitles', language_code: 'language_code_example'}) # CreateTrackRequest | 

begin
  # Create an asset track
  result = api_instance.create_asset_track(asset_id, create_track_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->create_asset_track: #{e}"
end
```

#### Using the create_asset_track_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTrackResponse>, Integer, Hash)> create_asset_track_with_http_info(asset_id, create_track_request)

```ruby
begin
  # Create an asset track
  data, status_code, headers = api_instance.create_asset_track_with_http_info(asset_id, create_track_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTrackResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->create_asset_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The asset ID. |  |
| **create_track_request** | [**CreateTrackRequest**](CreateTrackRequest.md) |  |  |

### Return type

[**CreateTrackResponse**](CreateTrackResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_asset

> delete_asset(asset_id)

Delete an asset

Deletes a video asset and all its data.

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.

begin
  # Delete an asset
  api_instance.delete_asset(asset_id)
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->delete_asset: #{e}"
end
```

#### Using the delete_asset_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_asset_with_http_info(asset_id)

```ruby
begin
  # Delete an asset
  data, status_code, headers = api_instance.delete_asset_with_http_info(asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->delete_asset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The asset ID. |  |

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_asset_playback_id

> delete_asset_playback_id(asset_id, playback_id)

Delete a playback ID

Deletes a playback ID, rendering it nonfunctional for viewing an asset's video content. Please note that deleting the playback ID removes access to the underlying asset; a viewer who started playback before the playback ID was deleted may be able to watch the entire video for a limited duration.

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.
playback_id = 'playback_id_example' # String | The live stream's playback ID.

begin
  # Delete a playback ID
  api_instance.delete_asset_playback_id(asset_id, playback_id)
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->delete_asset_playback_id: #{e}"
end
```

#### Using the delete_asset_playback_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_asset_playback_id_with_http_info(asset_id, playback_id)

```ruby
begin
  # Delete a playback ID
  data, status_code, headers = api_instance.delete_asset_playback_id_with_http_info(asset_id, playback_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->delete_asset_playback_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The asset ID. |  |
| **playback_id** | **String** | The live stream&#39;s playback ID. |  |

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_asset_static_rendition

> delete_asset_static_rendition(asset_id, static_rendition_id)

Delete a single static rendition for an asset

Deletes a single static rendition for an asset

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.
static_rendition_id = 'static_rendition_id_example' # String | The static rendition ID.

begin
  # Delete a single static rendition for an asset
  api_instance.delete_asset_static_rendition(asset_id, static_rendition_id)
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->delete_asset_static_rendition: #{e}"
end
```

#### Using the delete_asset_static_rendition_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_asset_static_rendition_with_http_info(asset_id, static_rendition_id)

```ruby
begin
  # Delete a single static rendition for an asset
  data, status_code, headers = api_instance.delete_asset_static_rendition_with_http_info(asset_id, static_rendition_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->delete_asset_static_rendition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The asset ID. |  |
| **static_rendition_id** | **String** | The static rendition ID. |  |

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_asset_track

> delete_asset_track(asset_id, track_id)

Delete an asset track

Removes a text track from an asset. Audio and video tracks on assets cannot be removed.

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.
track_id = 'track_id_example' # String | The track ID.

begin
  # Delete an asset track
  api_instance.delete_asset_track(asset_id, track_id)
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->delete_asset_track: #{e}"
end
```

#### Using the delete_asset_track_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_asset_track_with_http_info(asset_id, track_id)

```ruby
begin
  # Delete an asset track
  data, status_code, headers = api_instance.delete_asset_track_with_http_info(asset_id, track_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->delete_asset_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The asset ID. |  |
| **track_id** | **String** | The track ID. |  |

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## generate_asset_track_subtitles

> <GenerateTrackSubtitlesResponse> generate_asset_track_subtitles(asset_id, track_id, generate_track_subtitles_request)

Generate track subtitles

Generates subtitles (captions) for a given audio track. This API can be used for up to 7 days after an asset is created.

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.
track_id = 'track_id_example' # String | The track ID.
generate_track_subtitles_request = MuxRuby::GenerateTrackSubtitlesRequest.new # GenerateTrackSubtitlesRequest | 

begin
  # Generate track subtitles
  result = api_instance.generate_asset_track_subtitles(asset_id, track_id, generate_track_subtitles_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->generate_asset_track_subtitles: #{e}"
end
```

#### Using the generate_asset_track_subtitles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateTrackSubtitlesResponse>, Integer, Hash)> generate_asset_track_subtitles_with_http_info(asset_id, track_id, generate_track_subtitles_request)

```ruby
begin
  # Generate track subtitles
  data, status_code, headers = api_instance.generate_asset_track_subtitles_with_http_info(asset_id, track_id, generate_track_subtitles_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateTrackSubtitlesResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->generate_asset_track_subtitles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The asset ID. |  |
| **track_id** | **String** | The track ID. |  |
| **generate_track_subtitles_request** | [**GenerateTrackSubtitlesRequest**](GenerateTrackSubtitlesRequest.md) |  |  |

### Return type

[**GenerateTrackSubtitlesResponse**](GenerateTrackSubtitlesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_asset

> <AssetResponse> get_asset(asset_id)

Retrieve an asset

Retrieves the details of an asset that has previously been created. Supply the unique asset ID that was returned from your previous request, and Mux will return the corresponding asset information. The same information is returned when creating an asset.

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.

begin
  # Retrieve an asset
  result = api_instance.get_asset(asset_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->get_asset: #{e}"
end
```

#### Using the get_asset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssetResponse>, Integer, Hash)> get_asset_with_http_info(asset_id)

```ruby
begin
  # Retrieve an asset
  data, status_code, headers = api_instance.get_asset_with_http_info(asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssetResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->get_asset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The asset ID. |  |

### Return type

[**AssetResponse**](AssetResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_asset_input_info

> <GetAssetInputInfoResponse> get_asset_input_info(asset_id)

Retrieve asset input info

Returns a list of the input objects that were used to create the asset along with any settings that were applied to each input.

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.

begin
  # Retrieve asset input info
  result = api_instance.get_asset_input_info(asset_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->get_asset_input_info: #{e}"
end
```

#### Using the get_asset_input_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetInputInfoResponse>, Integer, Hash)> get_asset_input_info_with_http_info(asset_id)

```ruby
begin
  # Retrieve asset input info
  data, status_code, headers = api_instance.get_asset_input_info_with_http_info(asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetInputInfoResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->get_asset_input_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The asset ID. |  |

### Return type

[**GetAssetInputInfoResponse**](GetAssetInputInfoResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_asset_playback_id

> <GetAssetPlaybackIDResponse> get_asset_playback_id(asset_id, playback_id)

Retrieve a playback ID

Retrieves information about the specified playback ID.

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.
playback_id = 'playback_id_example' # String | The live stream's playback ID.

begin
  # Retrieve a playback ID
  result = api_instance.get_asset_playback_id(asset_id, playback_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->get_asset_playback_id: #{e}"
end
```

#### Using the get_asset_playback_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssetPlaybackIDResponse>, Integer, Hash)> get_asset_playback_id_with_http_info(asset_id, playback_id)

```ruby
begin
  # Retrieve a playback ID
  data, status_code, headers = api_instance.get_asset_playback_id_with_http_info(asset_id, playback_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssetPlaybackIDResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->get_asset_playback_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The asset ID. |  |
| **playback_id** | **String** | The live stream&#39;s playback ID. |  |

### Return type

[**GetAssetPlaybackIDResponse**](GetAssetPlaybackIDResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_assets

> <ListAssetsResponse> list_assets(opts)

List assets

List all Mux assets.

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

api_instance = MuxRuby::AssetsApi.new
opts = {
  limit: 56, # Integer | Number of items to include in the response
  page: 56, # Integer | Offset by this many pages, of the size of `limit`
  live_stream_id: 'live_stream_id_example', # String | Filter response to return all the assets for this live stream only
  upload_id: 'upload_id_example' # String | Filter response to return an asset created from this direct upload only
}

begin
  # List assets
  result = api_instance.list_assets(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->list_assets: #{e}"
end
```

#### Using the list_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAssetsResponse>, Integer, Hash)> list_assets_with_http_info(opts)

```ruby
begin
  # List assets
  data, status_code, headers = api_instance.list_assets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAssetsResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->list_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 25] |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |
| **live_stream_id** | **String** | Filter response to return all the assets for this live stream only | [optional] |
| **upload_id** | **String** | Filter response to return an asset created from this direct upload only | [optional] |

### Return type

[**ListAssetsResponse**](ListAssetsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_asset

> <AssetResponse> update_asset(asset_id, update_asset_request)

Update an asset

Updates the details of an already-created Asset with the provided Asset ID. This currently supports only the `passthrough` field.

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.
update_asset_request = MuxRuby::UpdateAssetRequest.new # UpdateAssetRequest | 

begin
  # Update an asset
  result = api_instance.update_asset(asset_id, update_asset_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->update_asset: #{e}"
end
```

#### Using the update_asset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssetResponse>, Integer, Hash)> update_asset_with_http_info(asset_id, update_asset_request)

```ruby
begin
  # Update an asset
  data, status_code, headers = api_instance.update_asset_with_http_info(asset_id, update_asset_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssetResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->update_asset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The asset ID. |  |
| **update_asset_request** | [**UpdateAssetRequest**](UpdateAssetRequest.md) |  |  |

### Return type

[**AssetResponse**](AssetResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_asset_master_access

> <AssetResponse> update_asset_master_access(asset_id, update_asset_master_access_request)

Update master access

Allows you to add temporary access to the master (highest-quality) version of the asset in MP4 format. A URL will be created that can be used to download the master version for 24 hours. After 24 hours Master Access will revert to \"none\". This master version is not optimized for web and not meant to be streamed, only downloaded for purposes like archiving or editing the video offline.

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.
update_asset_master_access_request = MuxRuby::UpdateAssetMasterAccessRequest.new # UpdateAssetMasterAccessRequest | 

begin
  # Update master access
  result = api_instance.update_asset_master_access(asset_id, update_asset_master_access_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->update_asset_master_access: #{e}"
end
```

#### Using the update_asset_master_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssetResponse>, Integer, Hash)> update_asset_master_access_with_http_info(asset_id, update_asset_master_access_request)

```ruby
begin
  # Update master access
  data, status_code, headers = api_instance.update_asset_master_access_with_http_info(asset_id, update_asset_master_access_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssetResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->update_asset_master_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The asset ID. |  |
| **update_asset_master_access_request** | [**UpdateAssetMasterAccessRequest**](UpdateAssetMasterAccessRequest.md) |  |  |

### Return type

[**AssetResponse**](AssetResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_asset_mp4_support

> <AssetResponse> update_asset_mp4_support(asset_id, update_asset_mp4_support_request)

Update MP4 support

This method has been deprecated. Please see the [Static Rendition API](https://www.mux.com/docs/guides/enable-static-mp4-renditions#after-asset-creation). Allows you to add or remove mp4 support for assets that were created without it. The values supported are `capped-1080p`, `audio-only`, `audio-only,capped-1080p`, `standard`(deprecated),  and `none`. `none` means that an asset *does not* have mp4 support, so submitting a request with `mp4_support` set to `none` will delete the mp4 assets from the asset in question. 

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.
update_asset_mp4_support_request = MuxRuby::UpdateAssetMP4SupportRequest.new # UpdateAssetMP4SupportRequest | 

begin
  # Update MP4 support
  result = api_instance.update_asset_mp4_support(asset_id, update_asset_mp4_support_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->update_asset_mp4_support: #{e}"
end
```

#### Using the update_asset_mp4_support_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssetResponse>, Integer, Hash)> update_asset_mp4_support_with_http_info(asset_id, update_asset_mp4_support_request)

```ruby
begin
  # Update MP4 support
  data, status_code, headers = api_instance.update_asset_mp4_support_with_http_info(asset_id, update_asset_mp4_support_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssetResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling AssetsApi->update_asset_mp4_support_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **String** | The asset ID. |  |
| **update_asset_mp4_support_request** | [**UpdateAssetMP4SupportRequest**](UpdateAssetMP4SupportRequest.md) |  |  |

### Return type

[**AssetResponse**](AssetResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

