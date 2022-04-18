# MuxRuby::LiveStreamsApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_live_stream**](LiveStreamsApi.md#create_live_stream) | **POST** /video/v1/live-streams | Create a live stream |
| [**create_live_stream_playback_id**](LiveStreamsApi.md#create_live_stream_playback_id) | **POST** /video/v1/live-streams/{LIVE_STREAM_ID}/playback-ids | Create a live stream playback ID |
| [**create_live_stream_simulcast_target**](LiveStreamsApi.md#create_live_stream_simulcast_target) | **POST** /video/v1/live-streams/{LIVE_STREAM_ID}/simulcast-targets | Create a live stream simulcast target |
| [**delete_live_stream**](LiveStreamsApi.md#delete_live_stream) | **DELETE** /video/v1/live-streams/{LIVE_STREAM_ID} | Delete a live stream |
| [**delete_live_stream_playback_id**](LiveStreamsApi.md#delete_live_stream_playback_id) | **DELETE** /video/v1/live-streams/{LIVE_STREAM_ID}/playback-ids/{PLAYBACK_ID} | Delete a live stream playback ID |
| [**delete_live_stream_simulcast_target**](LiveStreamsApi.md#delete_live_stream_simulcast_target) | **DELETE** /video/v1/live-streams/{LIVE_STREAM_ID}/simulcast-targets/{SIMULCAST_TARGET_ID} | Delete a Live Stream Simulcast Target |
| [**disable_live_stream**](LiveStreamsApi.md#disable_live_stream) | **PUT** /video/v1/live-streams/{LIVE_STREAM_ID}/disable | Disable a live stream |
| [**enable_live_stream**](LiveStreamsApi.md#enable_live_stream) | **PUT** /video/v1/live-streams/{LIVE_STREAM_ID}/enable | Enable a live stream |
| [**get_live_stream**](LiveStreamsApi.md#get_live_stream) | **GET** /video/v1/live-streams/{LIVE_STREAM_ID} | Retrieve a live stream |
| [**get_live_stream_playback_id**](LiveStreamsApi.md#get_live_stream_playback_id) | **GET** /video/v1/live-streams/{LIVE_STREAM_ID}/playback-ids/{PLAYBACK_ID} | Retrieve a live stream playback ID |
| [**get_live_stream_simulcast_target**](LiveStreamsApi.md#get_live_stream_simulcast_target) | **GET** /video/v1/live-streams/{LIVE_STREAM_ID}/simulcast-targets/{SIMULCAST_TARGET_ID} | Retrieve a Live Stream Simulcast Target |
| [**list_live_streams**](LiveStreamsApi.md#list_live_streams) | **GET** /video/v1/live-streams | List live streams |
| [**reset_stream_key**](LiveStreamsApi.md#reset_stream_key) | **POST** /video/v1/live-streams/{LIVE_STREAM_ID}/reset-stream-key | Reset a live stream&#39;s stream key |
| [**signal_live_stream_complete**](LiveStreamsApi.md#signal_live_stream_complete) | **PUT** /video/v1/live-streams/{LIVE_STREAM_ID}/complete | Signal a live stream is finished |
| [**update_live_stream**](LiveStreamsApi.md#update_live_stream) | **PATCH** /video/v1/live-streams/{LIVE_STREAM_ID} | Update a live stream |
| [**update_live_stream_embedded_subtitles**](LiveStreamsApi.md#update_live_stream_embedded_subtitles) | **PUT** /video/v1/live-streams/{LIVE_STREAM_ID}/embedded-subtitles | Update a live stream&#39;s embedded subtitles |


## create_live_stream

> <LiveStreamResponse> create_live_stream(create_live_stream_request)

Create a live stream

Creates a new live stream. Once created, an encoder can connect to Mux via the specified stream key and begin streaming to an audience.

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

api_instance = MuxRuby::LiveStreamsApi.new
create_live_stream_request = MuxRuby::CreateLiveStreamRequest.new # CreateLiveStreamRequest | 

begin
  # Create a live stream
  result = api_instance.create_live_stream(create_live_stream_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->create_live_stream: #{e}"
end
```

#### Using the create_live_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LiveStreamResponse>, Integer, Hash)> create_live_stream_with_http_info(create_live_stream_request)

```ruby
begin
  # Create a live stream
  data, status_code, headers = api_instance.create_live_stream_with_http_info(create_live_stream_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LiveStreamResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->create_live_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_live_stream_request** | [**CreateLiveStreamRequest**](CreateLiveStreamRequest.md) |  |  |

### Return type

[**LiveStreamResponse**](LiveStreamResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_live_stream_playback_id

> <CreatePlaybackIDResponse> create_live_stream_playback_id(live_stream_id, create_playback_id_request)

Create a live stream playback ID

Create a new playback ID for this live stream, through which a viewer can watch the streamed content of the live stream.

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

api_instance = MuxRuby::LiveStreamsApi.new
live_stream_id = 'live_stream_id_example' # String | The live stream ID
create_playback_id_request = MuxRuby::CreatePlaybackIDRequest.new # CreatePlaybackIDRequest | 

begin
  # Create a live stream playback ID
  result = api_instance.create_live_stream_playback_id(live_stream_id, create_playback_id_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->create_live_stream_playback_id: #{e}"
end
```

#### Using the create_live_stream_playback_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePlaybackIDResponse>, Integer, Hash)> create_live_stream_playback_id_with_http_info(live_stream_id, create_playback_id_request)

```ruby
begin
  # Create a live stream playback ID
  data, status_code, headers = api_instance.create_live_stream_playback_id_with_http_info(live_stream_id, create_playback_id_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePlaybackIDResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->create_live_stream_playback_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_stream_id** | **String** | The live stream ID |  |
| **create_playback_id_request** | [**CreatePlaybackIDRequest**](CreatePlaybackIDRequest.md) |  |  |

### Return type

[**CreatePlaybackIDResponse**](CreatePlaybackIDResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_live_stream_simulcast_target

> <SimulcastTargetResponse> create_live_stream_simulcast_target(live_stream_id, create_simulcast_target_request)

Create a live stream simulcast target

Create a simulcast target for the parent live stream. Simulcast target can only be created when the parent live stream is in idle state. Only one simulcast target can be created at a time with this API.

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

api_instance = MuxRuby::LiveStreamsApi.new
live_stream_id = 'live_stream_id_example' # String | The live stream ID
create_simulcast_target_request = MuxRuby::CreateSimulcastTargetRequest.new({url: 'url_example'}) # CreateSimulcastTargetRequest | 

begin
  # Create a live stream simulcast target
  result = api_instance.create_live_stream_simulcast_target(live_stream_id, create_simulcast_target_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->create_live_stream_simulcast_target: #{e}"
end
```

#### Using the create_live_stream_simulcast_target_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SimulcastTargetResponse>, Integer, Hash)> create_live_stream_simulcast_target_with_http_info(live_stream_id, create_simulcast_target_request)

```ruby
begin
  # Create a live stream simulcast target
  data, status_code, headers = api_instance.create_live_stream_simulcast_target_with_http_info(live_stream_id, create_simulcast_target_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SimulcastTargetResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->create_live_stream_simulcast_target_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_stream_id** | **String** | The live stream ID |  |
| **create_simulcast_target_request** | [**CreateSimulcastTargetRequest**](CreateSimulcastTargetRequest.md) |  |  |

### Return type

[**SimulcastTargetResponse**](SimulcastTargetResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_live_stream

> delete_live_stream(live_stream_id)

Delete a live stream

Deletes a live stream from the current environment. If the live stream is currently active and being streamed to, ingest will be terminated and the encoder will be disconnected.

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

api_instance = MuxRuby::LiveStreamsApi.new
live_stream_id = 'live_stream_id_example' # String | The live stream ID

begin
  # Delete a live stream
  api_instance.delete_live_stream(live_stream_id)
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->delete_live_stream: #{e}"
end
```

#### Using the delete_live_stream_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_live_stream_with_http_info(live_stream_id)

```ruby
begin
  # Delete a live stream
  data, status_code, headers = api_instance.delete_live_stream_with_http_info(live_stream_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->delete_live_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_stream_id** | **String** | The live stream ID |  |

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_live_stream_playback_id

> delete_live_stream_playback_id(live_stream_id, playback_id)

Delete a live stream playback ID

Deletes the playback ID for the live stream. This will not disable ingest (as the live stream still exists). New attempts to play back the live stream will fail immediately. However, current viewers will be able to continue watching the stream for some period of time.

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

api_instance = MuxRuby::LiveStreamsApi.new
live_stream_id = 'live_stream_id_example' # String | The live stream ID
playback_id = 'playback_id_example' # String | The live stream's playback ID.

begin
  # Delete a live stream playback ID
  api_instance.delete_live_stream_playback_id(live_stream_id, playback_id)
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->delete_live_stream_playback_id: #{e}"
end
```

#### Using the delete_live_stream_playback_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_live_stream_playback_id_with_http_info(live_stream_id, playback_id)

```ruby
begin
  # Delete a live stream playback ID
  data, status_code, headers = api_instance.delete_live_stream_playback_id_with_http_info(live_stream_id, playback_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->delete_live_stream_playback_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_stream_id** | **String** | The live stream ID |  |
| **playback_id** | **String** | The live stream&#39;s playback ID. |  |

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_live_stream_simulcast_target

> delete_live_stream_simulcast_target(live_stream_id, simulcast_target_id)

Delete a Live Stream Simulcast Target

Delete the simulcast target using the simulcast target ID returned when creating the simulcast target. Simulcast Target can only be deleted when the parent live stream is in idle state.

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

api_instance = MuxRuby::LiveStreamsApi.new
live_stream_id = 'live_stream_id_example' # String | The live stream ID
simulcast_target_id = 'simulcast_target_id_example' # String | The ID of the simulcast target.

begin
  # Delete a Live Stream Simulcast Target
  api_instance.delete_live_stream_simulcast_target(live_stream_id, simulcast_target_id)
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->delete_live_stream_simulcast_target: #{e}"
end
```

#### Using the delete_live_stream_simulcast_target_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_live_stream_simulcast_target_with_http_info(live_stream_id, simulcast_target_id)

```ruby
begin
  # Delete a Live Stream Simulcast Target
  data, status_code, headers = api_instance.delete_live_stream_simulcast_target_with_http_info(live_stream_id, simulcast_target_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->delete_live_stream_simulcast_target_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_stream_id** | **String** | The live stream ID |  |
| **simulcast_target_id** | **String** | The ID of the simulcast target. |  |

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## disable_live_stream

> <DisableLiveStreamResponse> disable_live_stream(live_stream_id)

Disable a live stream

Disables a live stream, making it reject incoming RTMP streams until re-enabled. The API also ends the live stream recording immediately when active. Ending the live stream recording adds the `EXT-X-ENDLIST` tag to the HLS manifest which notifies the player that this live stream is over.  Mux also closes the encoder connection immediately. Any attempt from the encoder to re-establish connection will fail till the live stream is re-enabled. 

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

api_instance = MuxRuby::LiveStreamsApi.new
live_stream_id = 'live_stream_id_example' # String | The live stream ID

begin
  # Disable a live stream
  result = api_instance.disable_live_stream(live_stream_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->disable_live_stream: #{e}"
end
```

#### Using the disable_live_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisableLiveStreamResponse>, Integer, Hash)> disable_live_stream_with_http_info(live_stream_id)

```ruby
begin
  # Disable a live stream
  data, status_code, headers = api_instance.disable_live_stream_with_http_info(live_stream_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisableLiveStreamResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->disable_live_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_stream_id** | **String** | The live stream ID |  |

### Return type

[**DisableLiveStreamResponse**](DisableLiveStreamResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## enable_live_stream

> <EnableLiveStreamResponse> enable_live_stream(live_stream_id)

Enable a live stream

Enables a live stream, allowing it to accept an incoming RTMP stream.

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

api_instance = MuxRuby::LiveStreamsApi.new
live_stream_id = 'live_stream_id_example' # String | The live stream ID

begin
  # Enable a live stream
  result = api_instance.enable_live_stream(live_stream_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->enable_live_stream: #{e}"
end
```

#### Using the enable_live_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnableLiveStreamResponse>, Integer, Hash)> enable_live_stream_with_http_info(live_stream_id)

```ruby
begin
  # Enable a live stream
  data, status_code, headers = api_instance.enable_live_stream_with_http_info(live_stream_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnableLiveStreamResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->enable_live_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_stream_id** | **String** | The live stream ID |  |

### Return type

[**EnableLiveStreamResponse**](EnableLiveStreamResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_live_stream

> <LiveStreamResponse> get_live_stream(live_stream_id)

Retrieve a live stream

Retrieves the details of a live stream that has previously been created. Supply the unique live stream ID that was returned from your previous request, and Mux will return the corresponding live stream information. The same information is returned when creating a live stream.

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

api_instance = MuxRuby::LiveStreamsApi.new
live_stream_id = 'live_stream_id_example' # String | The live stream ID

begin
  # Retrieve a live stream
  result = api_instance.get_live_stream(live_stream_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->get_live_stream: #{e}"
end
```

#### Using the get_live_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LiveStreamResponse>, Integer, Hash)> get_live_stream_with_http_info(live_stream_id)

```ruby
begin
  # Retrieve a live stream
  data, status_code, headers = api_instance.get_live_stream_with_http_info(live_stream_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LiveStreamResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->get_live_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_stream_id** | **String** | The live stream ID |  |

### Return type

[**LiveStreamResponse**](LiveStreamResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_live_stream_playback_id

> <GetLiveStreamPlaybackIDResponse> get_live_stream_playback_id(live_stream_id, playback_id)

Retrieve a live stream playback ID

Fetches information about a live stream's playback ID, through which a viewer can watch the streamed content from this live stream.

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

api_instance = MuxRuby::LiveStreamsApi.new
live_stream_id = 'live_stream_id_example' # String | The live stream ID
playback_id = 'playback_id_example' # String | The live stream's playback ID.

begin
  # Retrieve a live stream playback ID
  result = api_instance.get_live_stream_playback_id(live_stream_id, playback_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->get_live_stream_playback_id: #{e}"
end
```

#### Using the get_live_stream_playback_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLiveStreamPlaybackIDResponse>, Integer, Hash)> get_live_stream_playback_id_with_http_info(live_stream_id, playback_id)

```ruby
begin
  # Retrieve a live stream playback ID
  data, status_code, headers = api_instance.get_live_stream_playback_id_with_http_info(live_stream_id, playback_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLiveStreamPlaybackIDResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->get_live_stream_playback_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_stream_id** | **String** | The live stream ID |  |
| **playback_id** | **String** | The live stream&#39;s playback ID. |  |

### Return type

[**GetLiveStreamPlaybackIDResponse**](GetLiveStreamPlaybackIDResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_live_stream_simulcast_target

> <SimulcastTargetResponse> get_live_stream_simulcast_target(live_stream_id, simulcast_target_id)

Retrieve a Live Stream Simulcast Target

Retrieves the details of the simulcast target created for the parent live stream. Supply the unique live stream ID and simulcast target ID that was returned in the response of create simulcast target request, and Mux will return the corresponding information.

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

api_instance = MuxRuby::LiveStreamsApi.new
live_stream_id = 'live_stream_id_example' # String | The live stream ID
simulcast_target_id = 'simulcast_target_id_example' # String | The ID of the simulcast target.

begin
  # Retrieve a Live Stream Simulcast Target
  result = api_instance.get_live_stream_simulcast_target(live_stream_id, simulcast_target_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->get_live_stream_simulcast_target: #{e}"
end
```

#### Using the get_live_stream_simulcast_target_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SimulcastTargetResponse>, Integer, Hash)> get_live_stream_simulcast_target_with_http_info(live_stream_id, simulcast_target_id)

```ruby
begin
  # Retrieve a Live Stream Simulcast Target
  data, status_code, headers = api_instance.get_live_stream_simulcast_target_with_http_info(live_stream_id, simulcast_target_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SimulcastTargetResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->get_live_stream_simulcast_target_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_stream_id** | **String** | The live stream ID |  |
| **simulcast_target_id** | **String** | The ID of the simulcast target. |  |

### Return type

[**SimulcastTargetResponse**](SimulcastTargetResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_live_streams

> <ListLiveStreamsResponse> list_live_streams(opts)

List live streams

Lists the live streams that currently exist in the current environment.

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

api_instance = MuxRuby::LiveStreamsApi.new
opts = {
  limit: 56, # Integer | Number of items to include in the response
  page: 56, # Integer | Offset by this many pages, of the size of `limit`
  stream_key: 'stream_key_example', # String | Filter response to return live stream for this stream key only
  status: MuxRuby::LiveStreamStatus::ACTIVE # LiveStreamStatus | Filter response to return live streams with the specified status only
}

begin
  # List live streams
  result = api_instance.list_live_streams(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->list_live_streams: #{e}"
end
```

#### Using the list_live_streams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLiveStreamsResponse>, Integer, Hash)> list_live_streams_with_http_info(opts)

```ruby
begin
  # List live streams
  data, status_code, headers = api_instance.list_live_streams_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLiveStreamsResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->list_live_streams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 25] |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |
| **stream_key** | **String** | Filter response to return live stream for this stream key only | [optional] |
| **status** | [**LiveStreamStatus**](.md) | Filter response to return live streams with the specified status only | [optional] |

### Return type

[**ListLiveStreamsResponse**](ListLiveStreamsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_stream_key

> <LiveStreamResponse> reset_stream_key(live_stream_id)

Reset a live stream's stream key

Reset a live stream key if you want to immediately stop the current stream key from working and create a new stream key that can be used for future broadcasts.

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

api_instance = MuxRuby::LiveStreamsApi.new
live_stream_id = 'live_stream_id_example' # String | The live stream ID

begin
  # Reset a live stream's stream key
  result = api_instance.reset_stream_key(live_stream_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->reset_stream_key: #{e}"
end
```

#### Using the reset_stream_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LiveStreamResponse>, Integer, Hash)> reset_stream_key_with_http_info(live_stream_id)

```ruby
begin
  # Reset a live stream's stream key
  data, status_code, headers = api_instance.reset_stream_key_with_http_info(live_stream_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LiveStreamResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->reset_stream_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_stream_id** | **String** | The live stream ID |  |

### Return type

[**LiveStreamResponse**](LiveStreamResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## signal_live_stream_complete

> <SignalLiveStreamCompleteResponse> signal_live_stream_complete(live_stream_id)

Signal a live stream is finished

(Optional) End the live stream recording immediately instead of waiting for the reconnect_window. `EXT-X-ENDLIST` tag is added to the HLS manifest which notifies the player that this live stream is over.  Mux does not close the encoder connection immediately. Encoders are often configured to re-establish connections immediately which would result in a new recorded asset. For this reason, Mux waits for 60s before closing the connection with the encoder. This 60s timeframe is meant to give encoder operators a chance to disconnect from their end. 

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

api_instance = MuxRuby::LiveStreamsApi.new
live_stream_id = 'live_stream_id_example' # String | The live stream ID

begin
  # Signal a live stream is finished
  result = api_instance.signal_live_stream_complete(live_stream_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->signal_live_stream_complete: #{e}"
end
```

#### Using the signal_live_stream_complete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignalLiveStreamCompleteResponse>, Integer, Hash)> signal_live_stream_complete_with_http_info(live_stream_id)

```ruby
begin
  # Signal a live stream is finished
  data, status_code, headers = api_instance.signal_live_stream_complete_with_http_info(live_stream_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignalLiveStreamCompleteResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->signal_live_stream_complete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_stream_id** | **String** | The live stream ID |  |

### Return type

[**SignalLiveStreamCompleteResponse**](SignalLiveStreamCompleteResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_live_stream

> <LiveStreamResponse> update_live_stream(live_stream_id, update_live_stream_request)

Update a live stream

Updates the parameters of a previously-created live stream. This currently supports a subset of variables. Supply the live stream ID and the updated parameters and Mux will return the corresponding live stream information. The information returned will be the same after update as for subsequent get live stream requests.

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

api_instance = MuxRuby::LiveStreamsApi.new
live_stream_id = 'live_stream_id_example' # String | The live stream ID
update_live_stream_request = MuxRuby::UpdateLiveStreamRequest.new # UpdateLiveStreamRequest | 

begin
  # Update a live stream
  result = api_instance.update_live_stream(live_stream_id, update_live_stream_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->update_live_stream: #{e}"
end
```

#### Using the update_live_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LiveStreamResponse>, Integer, Hash)> update_live_stream_with_http_info(live_stream_id, update_live_stream_request)

```ruby
begin
  # Update a live stream
  data, status_code, headers = api_instance.update_live_stream_with_http_info(live_stream_id, update_live_stream_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LiveStreamResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->update_live_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_stream_id** | **String** | The live stream ID |  |
| **update_live_stream_request** | [**UpdateLiveStreamRequest**](UpdateLiveStreamRequest.md) |  |  |

### Return type

[**LiveStreamResponse**](LiveStreamResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_live_stream_embedded_subtitles

> <LiveStreamResponse> update_live_stream_embedded_subtitles(live_stream_id, update_live_stream_embedded_subtitles_request)

Update a live stream's embedded subtitles

Configures a live stream to receive embedded closed captions. The resulting Asset's subtitle text track will have `closed_captions: true` set. 

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

api_instance = MuxRuby::LiveStreamsApi.new
live_stream_id = 'live_stream_id_example' # String | The live stream ID
update_live_stream_embedded_subtitles_request = MuxRuby::UpdateLiveStreamEmbeddedSubtitlesRequest.new # UpdateLiveStreamEmbeddedSubtitlesRequest | 

begin
  # Update a live stream's embedded subtitles
  result = api_instance.update_live_stream_embedded_subtitles(live_stream_id, update_live_stream_embedded_subtitles_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->update_live_stream_embedded_subtitles: #{e}"
end
```

#### Using the update_live_stream_embedded_subtitles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LiveStreamResponse>, Integer, Hash)> update_live_stream_embedded_subtitles_with_http_info(live_stream_id, update_live_stream_embedded_subtitles_request)

```ruby
begin
  # Update a live stream's embedded subtitles
  data, status_code, headers = api_instance.update_live_stream_embedded_subtitles_with_http_info(live_stream_id, update_live_stream_embedded_subtitles_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LiveStreamResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling LiveStreamsApi->update_live_stream_embedded_subtitles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_stream_id** | **String** | The live stream ID |  |
| **update_live_stream_embedded_subtitles_request** | [**UpdateLiveStreamEmbeddedSubtitlesRequest**](UpdateLiveStreamEmbeddedSubtitlesRequest.md) |  |  |

### Return type

[**LiveStreamResponse**](LiveStreamResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

