# MuxRuby::DimensionsApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_dimension_elements**](DimensionsApi.md#list_dimension_elements) | **GET** /data/v1/dimensions/{DIMENSION_ID}/elements | Lists elements for a trace dimension |
| [**list_dimension_values**](DimensionsApi.md#list_dimension_values) | **GET** /data/v1/dimensions/{DIMENSION_ID} | Lists the values for a specific dimension |
| [**list_dimensions**](DimensionsApi.md#list_dimensions) | **GET** /data/v1/dimensions | List Dimensions |


## list_dimension_elements

> <ListDimensionValuesResponse> list_dimension_elements(dimension_id, opts)

Lists elements for a trace dimension

Lists the elements (values) for a trace dimension along with their total counts. This endpoint is specifically designed for trace dimensions like video_cdn_trace that contain arrays of values. 

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

api_instance = MuxRuby::DimensionsApi.new
dimension_id = 'abcd1234' # String | ID of the Dimension
opts = {
  limit: 56, # Integer | Number of items to include in the response
  filters: ['inner_example'], # Array<String> | Filter results using key:value pairs. Must be provided as an array query string parameter.  **Basic filtering:** * `filters[]=dimension:value` - Include rows where dimension equals value * `filters[]=!dimension:value` - Exclude rows where dimension equals value  **For trace dimensions (like video_cdn_trace):** * `filters[]=+dimension:value` - Include rows where trace contains value * `filters[]=-dimension:value` - Exclude rows where trace contains value * `filters[]=dimension:[value1,value2]` - Exact trace match  **Examples:** * `filters[]=country:US` - US views only * `filters[]=+video_cdn_trace:fastly` - Views using Fastly CDN 
  metric_filters: ['inner_example'], # Array<String> | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of `exits_before_video_start`, `unique_viewers`, `video_startup_failure_percentage`, `view_dropped_percentage`, and `views`.  Example:    * `metric_filters[]=aggregate_startup_time>=1000` 
  timeframe: ['inner_example'], # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=).  Accepted formats are...    * array of epoch timestamps e.g. `timeframe[]=1498867200&timeframe[]=1498953600`   * duration string e.g. `timeframe[]=24:hours or timeframe[]=7:days` 
  order_by: 'negative_impact', # String | Value to order the results by
  order_direction: 'asc' # String | Sort order.
}

begin
  # Lists elements for a trace dimension
  result = api_instance.list_dimension_elements(dimension_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling DimensionsApi->list_dimension_elements: #{e}"
end
```

#### Using the list_dimension_elements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDimensionValuesResponse>, Integer, Hash)> list_dimension_elements_with_http_info(dimension_id, opts)

```ruby
begin
  # Lists elements for a trace dimension
  data, status_code, headers = api_instance.list_dimension_elements_with_http_info(dimension_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDimensionValuesResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling DimensionsApi->list_dimension_elements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dimension_id** | **String** | ID of the Dimension |  |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 25] |
| **filters** | [**Array&lt;String&gt;**](String.md) | Filter results using key:value pairs. Must be provided as an array query string parameter.  **Basic filtering:** * &#x60;filters[]&#x3D;dimension:value&#x60; - Include rows where dimension equals value * &#x60;filters[]&#x3D;!dimension:value&#x60; - Exclude rows where dimension equals value  **For trace dimensions (like video_cdn_trace):** * &#x60;filters[]&#x3D;+dimension:value&#x60; - Include rows where trace contains value * &#x60;filters[]&#x3D;-dimension:value&#x60; - Exclude rows where trace contains value * &#x60;filters[]&#x3D;dimension:[value1,value2]&#x60; - Exact trace match  **Examples:** * &#x60;filters[]&#x3D;country:US&#x60; - US views only * &#x60;filters[]&#x3D;+video_cdn_trace:fastly&#x60; - Views using Fastly CDN  | [optional] |
| **metric_filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of &#x60;exits_before_video_start&#x60;, &#x60;unique_viewers&#x60;, &#x60;video_startup_failure_percentage&#x60;, &#x60;view_dropped_percentage&#x60;, and &#x60;views&#x60;.  Example:    * &#x60;metric_filters[]&#x3D;aggregate_startup_time&gt;&#x3D;1000&#x60;  | [optional] |
| **timeframe** | [**Array&lt;String&gt;**](String.md) | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;).  Accepted formats are...    * array of epoch timestamps e.g. &#x60;timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600&#x60;   * duration string e.g. &#x60;timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days&#x60;  | [optional] |
| **order_by** | **String** | Value to order the results by | [optional] |
| **order_direction** | **String** | Sort order. | [optional] |

### Return type

[**ListDimensionValuesResponse**](ListDimensionValuesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_dimension_values

> <ListDimensionValuesResponse> list_dimension_values(dimension_id, opts)

Lists the values for a specific dimension

Lists the values for a dimension along with a total count of related views.  Note: This API replaces the list-filter-values API call. 

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

api_instance = MuxRuby::DimensionsApi.new
dimension_id = 'abcd1234' # String | ID of the Dimension
opts = {
  limit: 56, # Integer | Number of items to include in the response
  page: 56, # Integer | Offset by this many pages, of the size of `limit`
  filters: ['inner_example'], # Array<String> | Filter results using key:value pairs. Must be provided as an array query string parameter.  **Basic filtering:** * `filters[]=dimension:value` - Include rows where dimension equals value * `filters[]=!dimension:value` - Exclude rows where dimension equals value  **For trace dimensions (like video_cdn_trace):** * `filters[]=+dimension:value` - Include rows where trace contains value * `filters[]=-dimension:value` - Exclude rows where trace contains value * `filters[]=dimension:[value1,value2]` - Exact trace match  **Examples:** * `filters[]=country:US` - US views only * `filters[]=+video_cdn_trace:fastly` - Views using Fastly CDN 
  metric_filters: ['inner_example'], # Array<String> | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of `exits_before_video_start`, `unique_viewers`, `video_startup_failure_percentage`, `view_dropped_percentage`, and `views`.  Example:    * `metric_filters[]=aggregate_startup_time>=1000` 
  timeframe: ['inner_example'] # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=).  Accepted formats are...    * array of epoch timestamps e.g. `timeframe[]=1498867200&timeframe[]=1498953600`   * duration string e.g. `timeframe[]=24:hours or timeframe[]=7:days` 
}

begin
  # Lists the values for a specific dimension
  result = api_instance.list_dimension_values(dimension_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling DimensionsApi->list_dimension_values: #{e}"
end
```

#### Using the list_dimension_values_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDimensionValuesResponse>, Integer, Hash)> list_dimension_values_with_http_info(dimension_id, opts)

```ruby
begin
  # Lists the values for a specific dimension
  data, status_code, headers = api_instance.list_dimension_values_with_http_info(dimension_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDimensionValuesResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling DimensionsApi->list_dimension_values_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dimension_id** | **String** | ID of the Dimension |  |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 25] |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |
| **filters** | [**Array&lt;String&gt;**](String.md) | Filter results using key:value pairs. Must be provided as an array query string parameter.  **Basic filtering:** * &#x60;filters[]&#x3D;dimension:value&#x60; - Include rows where dimension equals value * &#x60;filters[]&#x3D;!dimension:value&#x60; - Exclude rows where dimension equals value  **For trace dimensions (like video_cdn_trace):** * &#x60;filters[]&#x3D;+dimension:value&#x60; - Include rows where trace contains value * &#x60;filters[]&#x3D;-dimension:value&#x60; - Exclude rows where trace contains value * &#x60;filters[]&#x3D;dimension:[value1,value2]&#x60; - Exact trace match  **Examples:** * &#x60;filters[]&#x3D;country:US&#x60; - US views only * &#x60;filters[]&#x3D;+video_cdn_trace:fastly&#x60; - Views using Fastly CDN  | [optional] |
| **metric_filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of &#x60;exits_before_video_start&#x60;, &#x60;unique_viewers&#x60;, &#x60;video_startup_failure_percentage&#x60;, &#x60;view_dropped_percentage&#x60;, and &#x60;views&#x60;.  Example:    * &#x60;metric_filters[]&#x3D;aggregate_startup_time&gt;&#x3D;1000&#x60;  | [optional] |
| **timeframe** | [**Array&lt;String&gt;**](String.md) | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;).  Accepted formats are...    * array of epoch timestamps e.g. &#x60;timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600&#x60;   * duration string e.g. &#x60;timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days&#x60;  | [optional] |

### Return type

[**ListDimensionValuesResponse**](ListDimensionValuesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_dimensions

> <ListDimensionsResponse> list_dimensions

List Dimensions

List all available dimensions.  Note: This API replaces the list-filters API call. 

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

api_instance = MuxRuby::DimensionsApi.new

begin
  # List Dimensions
  result = api_instance.list_dimensions
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling DimensionsApi->list_dimensions: #{e}"
end
```

#### Using the list_dimensions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDimensionsResponse>, Integer, Hash)> list_dimensions_with_http_info

```ruby
begin
  # List Dimensions
  data, status_code, headers = api_instance.list_dimensions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDimensionsResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling DimensionsApi->list_dimensions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListDimensionsResponse**](ListDimensionsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

