# MuxRuby::DeliveryUsageApi

All URIs are relative to *https://api.mux.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_delivery_usage**](DeliveryUsageApi.md#list_delivery_usage) | **GET** /video/v1/delivery-usage | List Usage


# **list_delivery_usage**
> ListDeliveryUsageResponse list_delivery_usage(opts)

List Usage

Returns a list of delivery usage records and their associated Asset IDs or Live Stream IDs. 

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

api_instance = MuxRuby::DeliveryUsageApi.new
opts = {
  page: 1, # Integer | Offset by this many pages, of the size of `limit`
  limit: 100, # Integer | Number of items to include in the response
  asset_id: 'asset_id_example', # String | Filter response to return delivery usage for this asset only.
  timeframe: ['timeframe_example'] # Array<String> | Time window to get delivery usage information. timeframe[0] indicates the start time, timeframe[1] indicates the end time in seconds since the Unix epoch. Default time window is 1 hour representing usage from 13th to 12th hour from when the request is made. 
}

begin
  #List Usage
  result = api_instance.list_delivery_usage(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling DeliveryUsageApi->list_delivery_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Offset by this many pages, of the size of &#x60;limit&#x60; | [optional] [default to 1]
 **limit** | **Integer**| Number of items to include in the response | [optional] [default to 100]
 **asset_id** | **String**| Filter response to return delivery usage for this asset only. | [optional] 
 **timeframe** | [**Array&lt;String&gt;**](String.md)| Time window to get delivery usage information. timeframe[0] indicates the start time, timeframe[1] indicates the end time in seconds since the Unix epoch. Default time window is 1 hour representing usage from 13th to 12th hour from when the request is made.  | [optional] 

### Return type

[**ListDeliveryUsageResponse**](ListDeliveryUsageResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



