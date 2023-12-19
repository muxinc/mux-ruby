# MuxRuby::MetricsApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_metric_timeseries_data**](MetricsApi.md#get_metric_timeseries_data) | **GET** /data/v1/metrics/{METRIC_ID}/timeseries | Get metric timeseries data |
| [**get_overall_values**](MetricsApi.md#get_overall_values) | **GET** /data/v1/metrics/{METRIC_ID}/overall | Get Overall values |
| [**list_all_metric_values**](MetricsApi.md#list_all_metric_values) | **GET** /data/v1/metrics/comparison | List all metric values |
| [**list_breakdown_values**](MetricsApi.md#list_breakdown_values) | **GET** /data/v1/metrics/{METRIC_ID}/breakdown | List breakdown values |
| [**list_insights**](MetricsApi.md#list_insights) | **GET** /data/v1/metrics/{METRIC_ID}/insights | List Insights |


## get_metric_timeseries_data

> <GetMetricTimeseriesDataResponse> get_metric_timeseries_data(metric_id, opts)

Get metric timeseries data

Returns timeseries data for a specific metric.  Each interval represented in the data array contains an array with the following values:   * the first element is the interval time   * the second element is the calculated metric value   * the third element is the number of views in the interval that have a valid metric value 

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

api_instance = MuxRuby::MetricsApi.new
metric_id = 'aggregate_startup_time' # String | ID of the Metric
opts = {
  timeframe: ['inner_example'], # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=).  Accepted formats are...    * array of epoch timestamps e.g. `timeframe[]=1498867200&timeframe[]=1498953600`   * duration string e.g. `timeframe[]=24:hours or timeframe[]=7:days` 
  filters: ['inner_example'], # Array<String> | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a `!` character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * `filters[]=operating_system:windows&filters[]=!country:US` 
  metric_filters: ['inner_example'], # Array<String> | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of `exits_before_video_start`, `unique_viewers`, `video_startup_failure_percentage`, and `views`.  Example:    * `metric_filters[]=aggregate_startup_time>=1000` 
  measurement: '95th', # String | Measurement for the provided metric. If omitted, the default for the metric will be used.
  order_direction: 'asc', # String | Sort order.
  group_by: 'minute' # String | Time granularity to group results by. If this value is omitted, a default granularity is chosen based on the timeframe.  For timeframes of less than 90 minutes, the default granularity is `minute`. Between 90 minutes and 6 hours, the default granularity is `ten_minutes`. Between 6 hours and 15 days inclusive, the default granularity is `hour`. The granularity of timeframes that exceed 15 days is `day`. This default behavior is subject to change; it is strongly suggested that you explicitly specify the granularity. 
}

begin
  # Get metric timeseries data
  result = api_instance.get_metric_timeseries_data(metric_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling MetricsApi->get_metric_timeseries_data: #{e}"
end
```

#### Using the get_metric_timeseries_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMetricTimeseriesDataResponse>, Integer, Hash)> get_metric_timeseries_data_with_http_info(metric_id, opts)

```ruby
begin
  # Get metric timeseries data
  data, status_code, headers = api_instance.get_metric_timeseries_data_with_http_info(metric_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMetricTimeseriesDataResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling MetricsApi->get_metric_timeseries_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_id** | **String** | ID of the Metric |  |
| **timeframe** | [**Array&lt;String&gt;**](String.md) | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;).  Accepted formats are...    * array of epoch timestamps e.g. &#x60;timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600&#x60;   * duration string e.g. &#x60;timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days&#x60;  | [optional] |
| **filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a &#x60;!&#x60; character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * &#x60;filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;!country:US&#x60;  | [optional] |
| **metric_filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of &#x60;exits_before_video_start&#x60;, &#x60;unique_viewers&#x60;, &#x60;video_startup_failure_percentage&#x60;, and &#x60;views&#x60;.  Example:    * &#x60;metric_filters[]&#x3D;aggregate_startup_time&gt;&#x3D;1000&#x60;  | [optional] |
| **measurement** | **String** | Measurement for the provided metric. If omitted, the default for the metric will be used. | [optional] |
| **order_direction** | **String** | Sort order. | [optional] |
| **group_by** | **String** | Time granularity to group results by. If this value is omitted, a default granularity is chosen based on the timeframe.  For timeframes of less than 90 minutes, the default granularity is &#x60;minute&#x60;. Between 90 minutes and 6 hours, the default granularity is &#x60;ten_minutes&#x60;. Between 6 hours and 15 days inclusive, the default granularity is &#x60;hour&#x60;. The granularity of timeframes that exceed 15 days is &#x60;day&#x60;. This default behavior is subject to change; it is strongly suggested that you explicitly specify the granularity.  | [optional] |

### Return type

[**GetMetricTimeseriesDataResponse**](GetMetricTimeseriesDataResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_overall_values

> <GetOverallValuesResponse> get_overall_values(metric_id, opts)

Get Overall values

Returns the overall value for a specific metric, as well as the total view count, watch time, and the Mux Global metric value for the metric.

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

api_instance = MuxRuby::MetricsApi.new
metric_id = 'aggregate_startup_time' # String | ID of the Metric
opts = {
  timeframe: ['inner_example'], # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=).  Accepted formats are...    * array of epoch timestamps e.g. `timeframe[]=1498867200&timeframe[]=1498953600`   * duration string e.g. `timeframe[]=24:hours or timeframe[]=7:days` 
  filters: ['inner_example'], # Array<String> | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a `!` character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * `filters[]=operating_system:windows&filters[]=!country:US` 
  metric_filters: ['inner_example'], # Array<String> | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of `exits_before_video_start`, `unique_viewers`, `video_startup_failure_percentage`, and `views`.  Example:    * `metric_filters[]=aggregate_startup_time>=1000` 
  measurement: '95th' # String | Measurement for the provided metric. If omitted, the default for the metric will be used.
}

begin
  # Get Overall values
  result = api_instance.get_overall_values(metric_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling MetricsApi->get_overall_values: #{e}"
end
```

#### Using the get_overall_values_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOverallValuesResponse>, Integer, Hash)> get_overall_values_with_http_info(metric_id, opts)

```ruby
begin
  # Get Overall values
  data, status_code, headers = api_instance.get_overall_values_with_http_info(metric_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOverallValuesResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling MetricsApi->get_overall_values_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_id** | **String** | ID of the Metric |  |
| **timeframe** | [**Array&lt;String&gt;**](String.md) | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;).  Accepted formats are...    * array of epoch timestamps e.g. &#x60;timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600&#x60;   * duration string e.g. &#x60;timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days&#x60;  | [optional] |
| **filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a &#x60;!&#x60; character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * &#x60;filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;!country:US&#x60;  | [optional] |
| **metric_filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of &#x60;exits_before_video_start&#x60;, &#x60;unique_viewers&#x60;, &#x60;video_startup_failure_percentage&#x60;, and &#x60;views&#x60;.  Example:    * &#x60;metric_filters[]&#x3D;aggregate_startup_time&gt;&#x3D;1000&#x60;  | [optional] |
| **measurement** | **String** | Measurement for the provided metric. If omitted, the default for the metric will be used. | [optional] |

### Return type

[**GetOverallValuesResponse**](GetOverallValuesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_all_metric_values

> <ListAllMetricValuesResponse> list_all_metric_values(opts)

List all metric values

List all of the values across every breakdown for a specific metric.

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

api_instance = MuxRuby::MetricsApi.new
opts = {
  timeframe: ['inner_example'], # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=).  Accepted formats are...    * array of epoch timestamps e.g. `timeframe[]=1498867200&timeframe[]=1498953600`   * duration string e.g. `timeframe[]=24:hours or timeframe[]=7:days` 
  filters: ['inner_example'], # Array<String> | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a `!` character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * `filters[]=operating_system:windows&filters[]=!country:US` 
  metric_filters: ['inner_example'], # Array<String> | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of `exits_before_video_start`, `unique_viewers`, `video_startup_failure_percentage`, and `views`.  Example:    * `metric_filters[]=aggregate_startup_time>=1000` 
  dimension: 'asn', # String | Dimension the specified value belongs to
  value: 'value_example' # String | Value to show all available metrics for
}

begin
  # List all metric values
  result = api_instance.list_all_metric_values(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling MetricsApi->list_all_metric_values: #{e}"
end
```

#### Using the list_all_metric_values_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllMetricValuesResponse>, Integer, Hash)> list_all_metric_values_with_http_info(opts)

```ruby
begin
  # List all metric values
  data, status_code, headers = api_instance.list_all_metric_values_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllMetricValuesResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling MetricsApi->list_all_metric_values_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timeframe** | [**Array&lt;String&gt;**](String.md) | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;).  Accepted formats are...    * array of epoch timestamps e.g. &#x60;timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600&#x60;   * duration string e.g. &#x60;timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days&#x60;  | [optional] |
| **filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a &#x60;!&#x60; character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * &#x60;filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;!country:US&#x60;  | [optional] |
| **metric_filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of &#x60;exits_before_video_start&#x60;, &#x60;unique_viewers&#x60;, &#x60;video_startup_failure_percentage&#x60;, and &#x60;views&#x60;.  Example:    * &#x60;metric_filters[]&#x3D;aggregate_startup_time&gt;&#x3D;1000&#x60;  | [optional] |
| **dimension** | **String** | Dimension the specified value belongs to | [optional] |
| **value** | **String** | Value to show all available metrics for | [optional] |

### Return type

[**ListAllMetricValuesResponse**](ListAllMetricValuesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_breakdown_values

> <ListBreakdownValuesResponse> list_breakdown_values(metric_id, opts)

List breakdown values

List the breakdown values for a specific metric.

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

api_instance = MuxRuby::MetricsApi.new
metric_id = 'aggregate_startup_time' # String | ID of the Metric
opts = {
  group_by: 'asn', # String | Breakdown value to group the results by
  measurement: '95th', # String | Measurement for the provided metric. If omitted, the default for the metric will be used.
  filters: ['inner_example'], # Array<String> | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a `!` character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * `filters[]=operating_system:windows&filters[]=!country:US` 
  metric_filters: ['inner_example'], # Array<String> | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of `exits_before_video_start`, `unique_viewers`, `video_startup_failure_percentage`, and `views`.  Example:    * `metric_filters[]=aggregate_startup_time>=1000` 
  limit: 56, # Integer | Number of items to include in the response
  page: 56, # Integer | Offset by this many pages, of the size of `limit`
  order_by: 'negative_impact', # String | Value to order the results by
  order_direction: 'asc', # String | Sort order.
  timeframe: ['inner_example'] # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=).  Accepted formats are...    * array of epoch timestamps e.g. `timeframe[]=1498867200&timeframe[]=1498953600`   * duration string e.g. `timeframe[]=24:hours or timeframe[]=7:days` 
}

begin
  # List breakdown values
  result = api_instance.list_breakdown_values(metric_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling MetricsApi->list_breakdown_values: #{e}"
end
```

#### Using the list_breakdown_values_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBreakdownValuesResponse>, Integer, Hash)> list_breakdown_values_with_http_info(metric_id, opts)

```ruby
begin
  # List breakdown values
  data, status_code, headers = api_instance.list_breakdown_values_with_http_info(metric_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBreakdownValuesResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling MetricsApi->list_breakdown_values_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_id** | **String** | ID of the Metric |  |
| **group_by** | **String** | Breakdown value to group the results by | [optional] |
| **measurement** | **String** | Measurement for the provided metric. If omitted, the default for the metric will be used. | [optional] |
| **filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a &#x60;!&#x60; character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * &#x60;filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;!country:US&#x60;  | [optional] |
| **metric_filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of &#x60;exits_before_video_start&#x60;, &#x60;unique_viewers&#x60;, &#x60;video_startup_failure_percentage&#x60;, and &#x60;views&#x60;.  Example:    * &#x60;metric_filters[]&#x3D;aggregate_startup_time&gt;&#x3D;1000&#x60;  | [optional] |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 25] |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |
| **order_by** | **String** | Value to order the results by | [optional] |
| **order_direction** | **String** | Sort order. | [optional] |
| **timeframe** | [**Array&lt;String&gt;**](String.md) | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;).  Accepted formats are...    * array of epoch timestamps e.g. &#x60;timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600&#x60;   * duration string e.g. &#x60;timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days&#x60;  | [optional] |

### Return type

[**ListBreakdownValuesResponse**](ListBreakdownValuesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_insights

> <ListInsightsResponse> list_insights(metric_id, opts)

List Insights

Returns a list of insights for a metric. These are the worst performing values across all breakdowns sorted by how much they negatively impact a specific metric.

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

api_instance = MuxRuby::MetricsApi.new
metric_id = 'aggregate_startup_time' # String | ID of the Metric
opts = {
  measurement: '95th', # String | Measurement for the provided metric. If omitted, the default for the metric will be used.
  order_direction: 'asc', # String | Sort order.
  timeframe: ['inner_example'], # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=).  Accepted formats are...    * array of epoch timestamps e.g. `timeframe[]=1498867200&timeframe[]=1498953600`   * duration string e.g. `timeframe[]=24:hours or timeframe[]=7:days` 
  filters: ['inner_example'], # Array<String> | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a `!` character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * `filters[]=operating_system:windows&filters[]=!country:US` 
  metric_filters: ['inner_example'] # Array<String> | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of `exits_before_video_start`, `unique_viewers`, `video_startup_failure_percentage`, and `views`.  Example:    * `metric_filters[]=aggregate_startup_time>=1000` 
}

begin
  # List Insights
  result = api_instance.list_insights(metric_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling MetricsApi->list_insights: #{e}"
end
```

#### Using the list_insights_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInsightsResponse>, Integer, Hash)> list_insights_with_http_info(metric_id, opts)

```ruby
begin
  # List Insights
  data, status_code, headers = api_instance.list_insights_with_http_info(metric_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInsightsResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling MetricsApi->list_insights_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_id** | **String** | ID of the Metric |  |
| **measurement** | **String** | Measurement for the provided metric. If omitted, the default for the metric will be used. | [optional] |
| **order_direction** | **String** | Sort order. | [optional] |
| **timeframe** | [**Array&lt;String&gt;**](String.md) | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;).  Accepted formats are...    * array of epoch timestamps e.g. &#x60;timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600&#x60;   * duration string e.g. &#x60;timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days&#x60;  | [optional] |
| **filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a &#x60;!&#x60; character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * &#x60;filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;!country:US&#x60;  | [optional] |
| **metric_filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of &#x60;exits_before_video_start&#x60;, &#x60;unique_viewers&#x60;, &#x60;video_startup_failure_percentage&#x60;, and &#x60;views&#x60;.  Example:    * &#x60;metric_filters[]&#x3D;aggregate_startup_time&gt;&#x3D;1000&#x60;  | [optional] |

### Return type

[**ListInsightsResponse**](ListInsightsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

