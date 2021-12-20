# MuxRuby::FiltersApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_filter_values**](FiltersApi.md#list_filter_values) | **GET** /data/v1/filters/{FILTER_ID} | Lists values for a specific filter |
| [**list_filters**](FiltersApi.md#list_filters) | **GET** /data/v1/filters | List Filters |


## list_filter_values

> <ListFilterValuesResponse> list_filter_values(filter_id, opts)

Lists values for a specific filter

The API has been replaced by the list-dimension-values API call.  Lists the values for a filter along with a total count of related views. 

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

api_instance = MuxRuby::FiltersApi.new
filter_id = 'abcd1234' # String | ID of the Filter
opts = {
  limit: 56, # Integer | Number of items to include in the response
  page: 56, # Integer | Offset by this many pages, of the size of `limit`
  filters: ['inner_example'], # Array<String> | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a `!` character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * `filters[]=operating_system:windows&filters[]=!country:US` 
  timeframe: ['inner_example'] # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=).  Accepted formats are...    * array of epoch timestamps e.g. `timeframe[]=1498867200&timeframe[]=1498953600`   * duration string e.g. `timeframe[]=24:hours or timeframe[]=7:days` 
}

begin
  # Lists values for a specific filter
  result = api_instance.list_filter_values(filter_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling FiltersApi->list_filter_values: #{e}"
end
```

#### Using the list_filter_values_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFilterValuesResponse>, Integer, Hash)> list_filter_values_with_http_info(filter_id, opts)

```ruby
begin
  # Lists values for a specific filter
  data, status_code, headers = api_instance.list_filter_values_with_http_info(filter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFilterValuesResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling FiltersApi->list_filter_values_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_id** | **String** | ID of the Filter |  |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 25] |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |
| **filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a &#x60;!&#x60; character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * &#x60;filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;!country:US&#x60;  | [optional] |
| **timeframe** | [**Array&lt;String&gt;**](String.md) | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;).  Accepted formats are...    * array of epoch timestamps e.g. &#x60;timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600&#x60;   * duration string e.g. &#x60;timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days&#x60;  | [optional] |

### Return type

[**ListFilterValuesResponse**](ListFilterValuesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_filters

> <ListFiltersResponse> list_filters

List Filters

The API has been replaced by the list-dimensions API call.  Lists all the filters broken out into basic and advanced. 

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

api_instance = MuxRuby::FiltersApi.new

begin
  # List Filters
  result = api_instance.list_filters
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling FiltersApi->list_filters: #{e}"
end
```

#### Using the list_filters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFiltersResponse>, Integer, Hash)> list_filters_with_http_info

```ruby
begin
  # List Filters
  data, status_code, headers = api_instance.list_filters_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFiltersResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling FiltersApi->list_filters_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListFiltersResponse**](ListFiltersResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

