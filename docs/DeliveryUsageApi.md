# MuxRuby::DeliveryUsageApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_delivery_usage**](DeliveryUsageApi.md#list_delivery_usage) | **GET** /video/v1/delivery-usage | List Usage |


## list_delivery_usage

> <ListDeliveryUsageResponse> list_delivery_usage(opts)

List Usage

Returns a list of delivery usage records and their associated Asset IDs or Live Stream IDs.

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

api_instance = MuxRuby::DeliveryUsageApi.new
opts = {
  page: 56, # Integer | Offset by this many pages, of the size of `limit`
  limit: 56, # Integer | Number of items to include in the response
  asset_id: 'asset_id_example', # String | Filter response to return delivery usage for this asset only. You cannot specify both the `asset_id` and `live_stream_id` parameters together.
  live_stream_id: 'live_stream_id_example', # String | Filter response to return delivery usage for assets for this live stream. You cannot specify both the `asset_id` and `live_stream_id` parameters together.
  timeframe: ['inner_example'] # Array<String> | Time window to get delivery usage information. timeframe[0] indicates the start time, timeframe[1] indicates the end time in seconds since the Unix epoch. Default time window is 1 hour representing usage from 13th to 12th hour from when the request is made.
}

begin
  # List Usage
  result = api_instance.list_delivery_usage(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling DeliveryUsageApi->list_delivery_usage: #{e}"
end
```

#### Using the list_delivery_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDeliveryUsageResponse>, Integer, Hash)> list_delivery_usage_with_http_info(opts)

```ruby
begin
  # List Usage
  data, status_code, headers = api_instance.list_delivery_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDeliveryUsageResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling DeliveryUsageApi->list_delivery_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 100] |
| **asset_id** | **String** | Filter response to return delivery usage for this asset only. You cannot specify both the &#x60;asset_id&#x60; and &#x60;live_stream_id&#x60; parameters together. | [optional] |
| **live_stream_id** | **String** | Filter response to return delivery usage for assets for this live stream. You cannot specify both the &#x60;asset_id&#x60; and &#x60;live_stream_id&#x60; parameters together. | [optional] |
| **timeframe** | [**Array&lt;String&gt;**](String.md) | Time window to get delivery usage information. timeframe[0] indicates the start time, timeframe[1] indicates the end time in seconds since the Unix epoch. Default time window is 1 hour representing usage from 13th to 12th hour from when the request is made. | [optional] |

### Return type

[**ListDeliveryUsageResponse**](ListDeliveryUsageResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

