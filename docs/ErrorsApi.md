# MuxRuby::ErrorsApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_errors**](ErrorsApi.md#list_errors) | **GET** /data/v1/errors | List Errors |


## list_errors

> <ListErrorsResponse> list_errors(opts)

List Errors

Returns a list of errors.

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

api_instance = MuxRuby::ErrorsApi.new
opts = {
  filters: ['inner_example'], # Array<String> | Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]=operating_system:windows&filters[]=country:US). Possible filter names are the same as returned by the List Filters endpoint. 
  timeframe: ['inner_example'] # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]=1498867200&timeframe[]=1498953600   * duration string e.g. timeframe[]=24:hours or timeframe[]=7:days. 
}

begin
  # List Errors
  result = api_instance.list_errors(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling ErrorsApi->list_errors: #{e}"
end
```

#### Using the list_errors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListErrorsResponse>, Integer, Hash)> list_errors_with_http_info(opts)

```ruby
begin
  # List Errors
  data, status_code, headers = api_instance.list_errors_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListErrorsResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling ErrorsApi->list_errors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filters** | [**Array&lt;String&gt;**](String.md) | Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;country:US). Possible filter names are the same as returned by the List Filters endpoint.  | [optional] |
| **timeframe** | [**Array&lt;String&gt;**](String.md) | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600   * duration string e.g. timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days.  | [optional] |

### Return type

[**ListErrorsResponse**](ListErrorsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

