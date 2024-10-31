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
  filters: ['inner_example'], # Array<String> | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a `!` character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * `filters[]=operating_system:windows&filters[]=!country:US` 
  metric_filters: ['inner_example'], # Array<String> | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of `exits_before_video_start`, `unique_viewers`, `video_startup_failure_percentage`, `view_dropped_percentage`, and `views`.  Example:    * `metric_filters[]=aggregate_startup_time>=1000` 
  timeframe: ['inner_example'] # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=).  Accepted formats are...    * array of epoch timestamps e.g. `timeframe[]=1498867200&timeframe[]=1498953600`   * duration string e.g. `timeframe[]=24:hours or timeframe[]=7:days` 
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
| **filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a &#x60;!&#x60; character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * &#x60;filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;!country:US&#x60;  | [optional] |
| **metric_filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of &#x60;exits_before_video_start&#x60;, &#x60;unique_viewers&#x60;, &#x60;video_startup_failure_percentage&#x60;, &#x60;view_dropped_percentage&#x60;, and &#x60;views&#x60;.  Example:    * &#x60;metric_filters[]&#x3D;aggregate_startup_time&gt;&#x3D;1000&#x60;  | [optional] |
| **timeframe** | [**Array&lt;String&gt;**](String.md) | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;).  Accepted formats are...    * array of epoch timestamps e.g. &#x60;timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600&#x60;   * duration string e.g. &#x60;timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days&#x60;  | [optional] |

### Return type

[**ListErrorsResponse**](ListErrorsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

