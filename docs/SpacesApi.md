# MuxRuby::SpacesApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_space**](SpacesApi.md#create_space) | **POST** /video/v1/spaces | Create a space |
| [**create_space_broadcast**](SpacesApi.md#create_space_broadcast) | **POST** /video/v1/spaces/{SPACE_ID}/broadcasts | Create a space broadcast |
| [**delete_space**](SpacesApi.md#delete_space) | **DELETE** /video/v1/spaces/{SPACE_ID} | Delete a space |
| [**delete_space_broadcast**](SpacesApi.md#delete_space_broadcast) | **DELETE** /video/v1/spaces/{SPACE_ID}/broadcasts/{BROADCAST_ID} | Delete a space broadcast |
| [**get_space**](SpacesApi.md#get_space) | **GET** /video/v1/spaces/{SPACE_ID} | Retrieve a space |
| [**get_space_broadcast**](SpacesApi.md#get_space_broadcast) | **GET** /video/v1/spaces/{SPACE_ID}/broadcasts/{BROADCAST_ID} | Retrieve space broadcast |
| [**list_spaces**](SpacesApi.md#list_spaces) | **GET** /video/v1/spaces | List spaces |
| [**start_space_broadcast**](SpacesApi.md#start_space_broadcast) | **POST** /video/v1/spaces/{SPACE_ID}/broadcasts/{BROADCAST_ID}/start | Start a space broadcast |
| [**stop_space_broadcast**](SpacesApi.md#stop_space_broadcast) | **POST** /video/v1/spaces/{SPACE_ID}/broadcasts/{BROADCAST_ID}/stop | Stop a space broadcast |


## create_space

> <SpaceResponse> create_space(create_space_request)

Create a space

Create a new space. Spaces are used to build [real-time video applications.](https://mux.com/real-time-video)

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

api_instance = MuxRuby::SpacesApi.new
create_space_request = MuxRuby::CreateSpaceRequest.new # CreateSpaceRequest | 

begin
  # Create a space
  result = api_instance.create_space(create_space_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->create_space: #{e}"
end
```

#### Using the create_space_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpaceResponse>, Integer, Hash)> create_space_with_http_info(create_space_request)

```ruby
begin
  # Create a space
  data, status_code, headers = api_instance.create_space_with_http_info(create_space_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpaceResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->create_space_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_space_request** | [**CreateSpaceRequest**](CreateSpaceRequest.md) |  |  |

### Return type

[**SpaceResponse**](SpaceResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_space_broadcast

> <BroadcastResponse> create_space_broadcast(space_id, create_broadcast_request)

Create a space broadcast

Creates a new broadcast. Broadcasts are used to create composited versions of your space, which can be broadcast to live streams. **Note:** By default only a single broadcast destination can be specified. Contact Mux support if you need more.

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

api_instance = MuxRuby::SpacesApi.new
space_id = 'space_id_example' # String | The space ID.
create_broadcast_request = MuxRuby::CreateBroadcastRequest.new({live_stream_id: 'live_stream_id_example'}) # CreateBroadcastRequest | 

begin
  # Create a space broadcast
  result = api_instance.create_space_broadcast(space_id, create_broadcast_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->create_space_broadcast: #{e}"
end
```

#### Using the create_space_broadcast_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BroadcastResponse>, Integer, Hash)> create_space_broadcast_with_http_info(space_id, create_broadcast_request)

```ruby
begin
  # Create a space broadcast
  data, status_code, headers = api_instance.create_space_broadcast_with_http_info(space_id, create_broadcast_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BroadcastResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->create_space_broadcast_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **space_id** | **String** | The space ID. |  |
| **create_broadcast_request** | [**CreateBroadcastRequest**](CreateBroadcastRequest.md) |  |  |

### Return type

[**BroadcastResponse**](BroadcastResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_space

> delete_space(space_id)

Delete a space

Deletes a space. Spaces can only be deleted when `idle`.

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

api_instance = MuxRuby::SpacesApi.new
space_id = 'space_id_example' # String | The space ID.

begin
  # Delete a space
  api_instance.delete_space(space_id)
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->delete_space: #{e}"
end
```

#### Using the delete_space_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_space_with_http_info(space_id)

```ruby
begin
  # Delete a space
  data, status_code, headers = api_instance.delete_space_with_http_info(space_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->delete_space_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **space_id** | **String** | The space ID. |  |

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_space_broadcast

> delete_space_broadcast(space_id, broadcast_id)

Delete a space broadcast

Deletes a single broadcast of a specific space. Broadcasts can only be deleted when `idle`.

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

api_instance = MuxRuby::SpacesApi.new
space_id = 'space_id_example' # String | The space ID.
broadcast_id = 'broadcast_id_example' # String | The broadcast ID.

begin
  # Delete a space broadcast
  api_instance.delete_space_broadcast(space_id, broadcast_id)
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->delete_space_broadcast: #{e}"
end
```

#### Using the delete_space_broadcast_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_space_broadcast_with_http_info(space_id, broadcast_id)

```ruby
begin
  # Delete a space broadcast
  data, status_code, headers = api_instance.delete_space_broadcast_with_http_info(space_id, broadcast_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->delete_space_broadcast_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **space_id** | **String** | The space ID. |  |
| **broadcast_id** | **String** | The broadcast ID. |  |

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_space

> <SpaceResponse> get_space(space_id)

Retrieve a space

Retrieves the details of a space that has previously been created. Supply the unique space ID that was returned from your create space request, and Mux will return the information about the corresponding space. The same information is returned when creating a space.

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

api_instance = MuxRuby::SpacesApi.new
space_id = 'space_id_example' # String | The space ID.

begin
  # Retrieve a space
  result = api_instance.get_space(space_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->get_space: #{e}"
end
```

#### Using the get_space_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpaceResponse>, Integer, Hash)> get_space_with_http_info(space_id)

```ruby
begin
  # Retrieve a space
  data, status_code, headers = api_instance.get_space_with_http_info(space_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpaceResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->get_space_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **space_id** | **String** | The space ID. |  |

### Return type

[**SpaceResponse**](SpaceResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_space_broadcast

> <BroadcastResponse> get_space_broadcast(space_id, broadcast_id)

Retrieve space broadcast

Retrieves the details of a broadcast of a specific space.

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

api_instance = MuxRuby::SpacesApi.new
space_id = 'space_id_example' # String | The space ID.
broadcast_id = 'broadcast_id_example' # String | The broadcast ID.

begin
  # Retrieve space broadcast
  result = api_instance.get_space_broadcast(space_id, broadcast_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->get_space_broadcast: #{e}"
end
```

#### Using the get_space_broadcast_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BroadcastResponse>, Integer, Hash)> get_space_broadcast_with_http_info(space_id, broadcast_id)

```ruby
begin
  # Retrieve space broadcast
  data, status_code, headers = api_instance.get_space_broadcast_with_http_info(space_id, broadcast_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BroadcastResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->get_space_broadcast_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **space_id** | **String** | The space ID. |  |
| **broadcast_id** | **String** | The broadcast ID. |  |

### Return type

[**BroadcastResponse**](BroadcastResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_spaces

> <ListSpacesResponse> list_spaces(opts)

List spaces

List all spaces in the current environment.

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

api_instance = MuxRuby::SpacesApi.new
opts = {
  limit: 56, # Integer | Number of items to include in the response
  page: 56 # Integer | Offset by this many pages, of the size of `limit`
}

begin
  # List spaces
  result = api_instance.list_spaces(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->list_spaces: #{e}"
end
```

#### Using the list_spaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSpacesResponse>, Integer, Hash)> list_spaces_with_http_info(opts)

```ruby
begin
  # List spaces
  data, status_code, headers = api_instance.list_spaces_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSpacesResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->list_spaces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 25] |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |

### Return type

[**ListSpacesResponse**](ListSpacesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_space_broadcast

> <StartSpaceBroadcastResponse> start_space_broadcast(space_id, broadcast_id)

Start a space broadcast

Starts broadcasting a space to the associated destination. Broadcasts can only be started when the space is `active` (when there are participants connected).

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

api_instance = MuxRuby::SpacesApi.new
space_id = 'space_id_example' # String | The space ID.
broadcast_id = 'broadcast_id_example' # String | The broadcast ID.

begin
  # Start a space broadcast
  result = api_instance.start_space_broadcast(space_id, broadcast_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->start_space_broadcast: #{e}"
end
```

#### Using the start_space_broadcast_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StartSpaceBroadcastResponse>, Integer, Hash)> start_space_broadcast_with_http_info(space_id, broadcast_id)

```ruby
begin
  # Start a space broadcast
  data, status_code, headers = api_instance.start_space_broadcast_with_http_info(space_id, broadcast_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StartSpaceBroadcastResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->start_space_broadcast_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **space_id** | **String** | The space ID. |  |
| **broadcast_id** | **String** | The broadcast ID. |  |

### Return type

[**StartSpaceBroadcastResponse**](StartSpaceBroadcastResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stop_space_broadcast

> <StopSpaceBroadcastResponse> stop_space_broadcast(space_id, broadcast_id)

Stop a space broadcast

Stops broadcasting a space, causing the destination live stream to become idle. This API also automatically calls `complete` on the destination live stream. Broadcasts are also automatically stopped when a space becomes idle.

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

api_instance = MuxRuby::SpacesApi.new
space_id = 'space_id_example' # String | The space ID.
broadcast_id = 'broadcast_id_example' # String | The broadcast ID.

begin
  # Stop a space broadcast
  result = api_instance.stop_space_broadcast(space_id, broadcast_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->stop_space_broadcast: #{e}"
end
```

#### Using the stop_space_broadcast_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StopSpaceBroadcastResponse>, Integer, Hash)> stop_space_broadcast_with_http_info(space_id, broadcast_id)

```ruby
begin
  # Stop a space broadcast
  data, status_code, headers = api_instance.stop_space_broadcast_with_http_info(space_id, broadcast_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StopSpaceBroadcastResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling SpacesApi->stop_space_broadcast_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **space_id** | **String** | The space ID. |  |
| **broadcast_id** | **String** | The broadcast ID. |  |

### Return type

[**StopSpaceBroadcastResponse**](StopSpaceBroadcastResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

