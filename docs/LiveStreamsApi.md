# MuxRuby::LiveStreamsApi

All URIs are relative to *https://api.mux.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_live_stream**](LiveStreamsApi.md#create_live_stream) | **POST** /video/v1/live-streams | Create a live stream
[**create_live_stream_playback_id**](LiveStreamsApi.md#create_live_stream_playback_id) | **POST** /video/v1/live-streams/{LIVE_STREAM_ID}/playback-ids | Create a live stream playback ID
[**create_live_stream_simulcast_target**](LiveStreamsApi.md#create_live_stream_simulcast_target) | **POST** /video/v1/live-streams/{LIVE_STREAM_ID}/simulcast-targets | Create a live stream simulcast target
[**delete_live_stream**](LiveStreamsApi.md#delete_live_stream) | **DELETE** /video/v1/live-streams/{LIVE_STREAM_ID} | Delete a live stream
[**delete_live_stream_playback_id**](LiveStreamsApi.md#delete_live_stream_playback_id) | **DELETE** /video/v1/live-streams/{LIVE_STREAM_ID}/playback-ids/{PLAYBACK_ID} | Delete a live stream playback ID
[**delete_live_stream_simulcast_target**](LiveStreamsApi.md#delete_live_stream_simulcast_target) | **DELETE** /video/v1/live-streams/{LIVE_STREAM_ID}/simulcast-targets/{SIMULCAST_TARGET_ID} | Delete a Live Stream Simulcast Target
[**get_live_stream**](LiveStreamsApi.md#get_live_stream) | **GET** /video/v1/live-streams/{LIVE_STREAM_ID} | Retrieve a live stream
[**get_live_stream_simulcast_target**](LiveStreamsApi.md#get_live_stream_simulcast_target) | **GET** /video/v1/live-streams/{LIVE_STREAM_ID}/simulcast-targets/{SIMULCAST_TARGET_ID} | Retrieve a Live Stream Simulcast Target
[**list_live_streams**](LiveStreamsApi.md#list_live_streams) | **GET** /video/v1/live-streams | List live streams
[**reset_stream_key**](LiveStreamsApi.md#reset_stream_key) | **POST** /video/v1/live-streams/{LIVE_STREAM_ID}/reset-stream-key | Reset a live stream’s stream key
[**signal_live_stream_complete**](LiveStreamsApi.md#signal_live_stream_complete) | **PUT** /video/v1/live-streams/{LIVE_STREAM_ID}/complete | Signal a live stream is finished


# **create_live_stream**
> LiveStreamResponse create_live_stream(create_live_stream_request)

Create a live stream

### Example
```ruby
# load the gem
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
  #Create a live stream
  result = api_instance.create_live_stream(create_live_stream_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling LiveStreamsApi->create_live_stream: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_live_stream_request** | [**CreateLiveStreamRequest**](CreateLiveStreamRequest.md)|  | 

### Return type

[**LiveStreamResponse**](LiveStreamResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_live_stream_playback_id**
> CreatePlaybackIDResponse create_live_stream_playback_id(live_stream_id, create_playback_id_request)

Create a live stream playback ID

### Example
```ruby
# load the gem
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
  #Create a live stream playback ID
  result = api_instance.create_live_stream_playback_id(live_stream_id, create_playback_id_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling LiveStreamsApi->create_live_stream_playback_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **live_stream_id** | **String**| The live stream ID | 
 **create_playback_id_request** | [**CreatePlaybackIDRequest**](CreatePlaybackIDRequest.md)|  | 

### Return type

[**CreatePlaybackIDResponse**](CreatePlaybackIDResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_live_stream_simulcast_target**
> SimulcastTargetResponse create_live_stream_simulcast_target(live_stream_id, create_simulcast_target_request)

Create a live stream simulcast target

Create a simulcast target for the parent live stream. Simulcast target can only be created when the parent live stream is in idle state. Only one simulcast target can be created at a time with this API.

### Example
```ruby
# load the gem
require 'mux_ruby'
# setup authorization
MuxRuby.configure do |config|
  # Configure HTTP basic authorization: accessToken
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = MuxRuby::LiveStreamsApi.new
live_stream_id = 'live_stream_id_example' # String | The live stream ID
create_simulcast_target_request = MuxRuby::CreateSimulcastTargetRequest.new # CreateSimulcastTargetRequest | 

begin
  #Create a live stream simulcast target
  result = api_instance.create_live_stream_simulcast_target(live_stream_id, create_simulcast_target_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling LiveStreamsApi->create_live_stream_simulcast_target: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **live_stream_id** | **String**| The live stream ID | 
 **create_simulcast_target_request** | [**CreateSimulcastTargetRequest**](CreateSimulcastTargetRequest.md)|  | 

### Return type

[**SimulcastTargetResponse**](SimulcastTargetResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_live_stream**
> delete_live_stream(live_stream_id)

Delete a live stream

### Example
```ruby
# load the gem
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
  #Delete a live stream
  api_instance.delete_live_stream(live_stream_id)
rescue MuxRuby::ApiError => e
  puts "Exception when calling LiveStreamsApi->delete_live_stream: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **live_stream_id** | **String**| The live stream ID | 

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_live_stream_playback_id**
> delete_live_stream_playback_id(live_stream_id, playback_id)

Delete a live stream playback ID

### Example
```ruby
# load the gem
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
  #Delete a live stream playback ID
  api_instance.delete_live_stream_playback_id(live_stream_id, playback_id)
rescue MuxRuby::ApiError => e
  puts "Exception when calling LiveStreamsApi->delete_live_stream_playback_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **live_stream_id** | **String**| The live stream ID | 
 **playback_id** | **String**| The live stream&#39;s playback ID. | 

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_live_stream_simulcast_target**
> delete_live_stream_simulcast_target(live_stream_id, simulcast_target_id)

Delete a Live Stream Simulcast Target

Delete the simulcast target using the simulcast target ID returned when creating the simulcast target. Simulcast Target can only be deleted when the parent live stream is in idle state.

### Example
```ruby
# load the gem
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
  #Delete a Live Stream Simulcast Target
  api_instance.delete_live_stream_simulcast_target(live_stream_id, simulcast_target_id)
rescue MuxRuby::ApiError => e
  puts "Exception when calling LiveStreamsApi->delete_live_stream_simulcast_target: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **live_stream_id** | **String**| The live stream ID | 
 **simulcast_target_id** | **String**| The ID of the simulcast target. | 

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_live_stream**
> LiveStreamResponse get_live_stream(live_stream_id)

Retrieve a live stream

Retrieves the details of a live stream that has previously been created. Supply the unique live stream ID that was returned from your previous request, and Mux will return the corresponding live stream information. The same information is returned when creating a live stream.

### Example
```ruby
# load the gem
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
  #Retrieve a live stream
  result = api_instance.get_live_stream(live_stream_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling LiveStreamsApi->get_live_stream: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **live_stream_id** | **String**| The live stream ID | 

### Return type

[**LiveStreamResponse**](LiveStreamResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_live_stream_simulcast_target**
> SimulcastTargetResponse get_live_stream_simulcast_target(live_stream_id, simulcast_target_id)

Retrieve a Live Stream Simulcast Target

Retrieves the details of the simulcast target created for the parent live stream. Supply the unique live stream ID and simulcast target ID that was returned in the response of create simulcast target request, and Mux will return the corresponding information.

### Example
```ruby
# load the gem
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
  #Retrieve a Live Stream Simulcast Target
  result = api_instance.get_live_stream_simulcast_target(live_stream_id, simulcast_target_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling LiveStreamsApi->get_live_stream_simulcast_target: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **live_stream_id** | **String**| The live stream ID | 
 **simulcast_target_id** | **String**| The ID of the simulcast target. | 

### Return type

[**SimulcastTargetResponse**](SimulcastTargetResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_live_streams**
> ListLiveStreamsResponse list_live_streams(opts)

List live streams

### Example
```ruby
# load the gem
require 'mux_ruby'
# setup authorization
MuxRuby.configure do |config|
  # Configure HTTP basic authorization: accessToken
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = MuxRuby::LiveStreamsApi.new
opts = {
  limit: 25, # Integer | Number of items to include in the response
  page: 1 # Integer | Offset by this many pages, of the size of `limit`
}

begin
  #List live streams
  result = api_instance.list_live_streams(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling LiveStreamsApi->list_live_streams: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of items to include in the response | [optional] [default to 25]
 **page** | **Integer**| Offset by this many pages, of the size of &#x60;limit&#x60; | [optional] [default to 1]

### Return type

[**ListLiveStreamsResponse**](ListLiveStreamsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **reset_stream_key**
> LiveStreamResponse reset_stream_key(live_stream_id)

Reset a live stream’s stream key

Reset a live stream key if you want to immediately stop the current stream key from working and create a new stream key that can be used for future broadcasts.

### Example
```ruby
# load the gem
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
  #Reset a live stream’s stream key
  result = api_instance.reset_stream_key(live_stream_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling LiveStreamsApi->reset_stream_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **live_stream_id** | **String**| The live stream ID | 

### Return type

[**LiveStreamResponse**](LiveStreamResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **signal_live_stream_complete**
> SignalLiveStreamCompleteResponse signal_live_stream_complete(live_stream_id)

Signal a live stream is finished

(Optional) Make the recorded asset available immediately instead of waiting for the reconnect_window.

### Example
```ruby
# load the gem
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
  #Signal a live stream is finished
  result = api_instance.signal_live_stream_complete(live_stream_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling LiveStreamsApi->signal_live_stream_complete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **live_stream_id** | **String**| The live stream ID | 

### Return type

[**SignalLiveStreamCompleteResponse**](SignalLiveStreamCompleteResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



