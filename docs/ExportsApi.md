# MuxRuby::ExportsApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_exports**](ExportsApi.md#list_exports) | **GET** /data/v1/exports | List property video view export links |
| [**list_exports_views**](ExportsApi.md#list_exports_views) | **GET** /data/v1/exports/views | List available property view exports |


## list_exports

> <ListExportsResponse> list_exports

List property video view export links

Deprecated: The API has been replaced by the list-exports-views API call.  Lists the available video view exports along with URLs to retrieve them. 

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

api_instance = MuxRuby::ExportsApi.new

begin
  # List property video view export links
  result = api_instance.list_exports
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling ExportsApi->list_exports: #{e}"
end
```

#### Using the list_exports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListExportsResponse>, Integer, Hash)> list_exports_with_http_info

```ruby
begin
  # List property video view export links
  data, status_code, headers = api_instance.list_exports_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListExportsResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling ExportsApi->list_exports_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListExportsResponse**](ListExportsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_exports_views

> <ListVideoViewExportsResponse> list_exports_views

List available property view exports

Lists the available video view exports along with URLs to retrieve them.

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

api_instance = MuxRuby::ExportsApi.new

begin
  # List available property view exports
  result = api_instance.list_exports_views
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling ExportsApi->list_exports_views: #{e}"
end
```

#### Using the list_exports_views_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVideoViewExportsResponse>, Integer, Hash)> list_exports_views_with_http_info

```ruby
begin
  # List available property view exports
  data, status_code, headers = api_instance.list_exports_views_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVideoViewExportsResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling ExportsApi->list_exports_views_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListVideoViewExportsResponse**](ListVideoViewExportsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

