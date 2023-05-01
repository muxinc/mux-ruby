# MuxRuby::MonitoringApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_monitoring_breakdown**](MonitoringApi.md#get_monitoring_breakdown) | **GET** /data/v1/monitoring/metrics/{MONITORING_METRIC_ID}/breakdown | Get Monitoring Breakdown |
| [**get_monitoring_histogram_timeseries**](MonitoringApi.md#get_monitoring_histogram_timeseries) | **GET** /data/v1/monitoring/metrics/{MONITORING_HISTOGRAM_METRIC_ID}/histogram-timeseries | Get Monitoring Histogram Timeseries |
| [**get_monitoring_timeseries**](MonitoringApi.md#get_monitoring_timeseries) | **GET** /data/v1/monitoring/metrics/{MONITORING_METRIC_ID}/timeseries | Get Monitoring Timeseries |
| [**list_monitoring_dimensions**](MonitoringApi.md#list_monitoring_dimensions) | **GET** /data/v1/monitoring/dimensions | List Monitoring Dimensions |
| [**list_monitoring_metrics**](MonitoringApi.md#list_monitoring_metrics) | **GET** /data/v1/monitoring/metrics | List Monitoring Metrics |


## get_monitoring_breakdown

> <GetMonitoringBreakdownResponse> get_monitoring_breakdown(monitoring_metric_id, opts)

Get Monitoring Breakdown

Gets breakdown information for a specific dimension and metric along with the number of concurrent viewers and negative impact score.

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

api_instance = MuxRuby::MonitoringApi.new
monitoring_metric_id = 'current-concurrent-viewers' # String | ID of the Monitoring Metric
opts = {
  dimension: 'asn', # String | Dimension the specified value belongs to
  timestamp: 56, # Integer | Timestamp to limit results by. This value must be provided as a unix timestamp. Defaults to the current unix timestamp.
  filters: ['inner_example'], # Array<String> | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a `!` character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * `filters[]=operating_system:windows&filters[]=!country:US` 
  order_by: 'negative_impact', # String | Value to order the results by
  order_direction: 'asc' # String | Sort order.
}

begin
  # Get Monitoring Breakdown
  result = api_instance.get_monitoring_breakdown(monitoring_metric_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling MonitoringApi->get_monitoring_breakdown: #{e}"
end
```

#### Using the get_monitoring_breakdown_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMonitoringBreakdownResponse>, Integer, Hash)> get_monitoring_breakdown_with_http_info(monitoring_metric_id, opts)

```ruby
begin
  # Get Monitoring Breakdown
  data, status_code, headers = api_instance.get_monitoring_breakdown_with_http_info(monitoring_metric_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMonitoringBreakdownResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling MonitoringApi->get_monitoring_breakdown_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monitoring_metric_id** | **String** | ID of the Monitoring Metric |  |
| **dimension** | **String** | Dimension the specified value belongs to | [optional] |
| **timestamp** | **Integer** | Timestamp to limit results by. This value must be provided as a unix timestamp. Defaults to the current unix timestamp. | [optional] |
| **filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a &#x60;!&#x60; character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * &#x60;filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;!country:US&#x60;  | [optional] |
| **order_by** | **String** | Value to order the results by | [optional] |
| **order_direction** | **String** | Sort order. | [optional] |

### Return type

[**GetMonitoringBreakdownResponse**](GetMonitoringBreakdownResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_monitoring_histogram_timeseries

> <GetMonitoringHistogramTimeseriesResponse> get_monitoring_histogram_timeseries(monitoring_histogram_metric_id, opts)

Get Monitoring Histogram Timeseries

Gets histogram timeseries information for a specific metric.

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

api_instance = MuxRuby::MonitoringApi.new
monitoring_histogram_metric_id = 'video-startup-time' # String | ID of the Monitoring Histogram Metric
opts = {
  filters: ['inner_example'] # Array<String> | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a `!` character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * `filters[]=operating_system:windows&filters[]=!country:US` 
}

begin
  # Get Monitoring Histogram Timeseries
  result = api_instance.get_monitoring_histogram_timeseries(monitoring_histogram_metric_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling MonitoringApi->get_monitoring_histogram_timeseries: #{e}"
end
```

#### Using the get_monitoring_histogram_timeseries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMonitoringHistogramTimeseriesResponse>, Integer, Hash)> get_monitoring_histogram_timeseries_with_http_info(monitoring_histogram_metric_id, opts)

```ruby
begin
  # Get Monitoring Histogram Timeseries
  data, status_code, headers = api_instance.get_monitoring_histogram_timeseries_with_http_info(monitoring_histogram_metric_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMonitoringHistogramTimeseriesResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling MonitoringApi->get_monitoring_histogram_timeseries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monitoring_histogram_metric_id** | **String** | ID of the Monitoring Histogram Metric |  |
| **filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a &#x60;!&#x60; character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * &#x60;filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;!country:US&#x60;  | [optional] |

### Return type

[**GetMonitoringHistogramTimeseriesResponse**](GetMonitoringHistogramTimeseriesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_monitoring_timeseries

> <GetMonitoringTimeseriesResponse> get_monitoring_timeseries(monitoring_metric_id, opts)

Get Monitoring Timeseries

Gets Time series information for a specific metric along with the number of concurrent viewers.

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

api_instance = MuxRuby::MonitoringApi.new
monitoring_metric_id = 'current-concurrent-viewers' # String | ID of the Monitoring Metric
opts = {
  filters: ['inner_example'], # Array<String> | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a `!` character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * `filters[]=operating_system:windows&filters[]=!country:US` 
  timestamp: 56 # Integer | Timestamp to use as the start of the timeseries data. This value must be provided as a unix timestamp. Defaults to 30 minutes ago.
}

begin
  # Get Monitoring Timeseries
  result = api_instance.get_monitoring_timeseries(monitoring_metric_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling MonitoringApi->get_monitoring_timeseries: #{e}"
end
```

#### Using the get_monitoring_timeseries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMonitoringTimeseriesResponse>, Integer, Hash)> get_monitoring_timeseries_with_http_info(monitoring_metric_id, opts)

```ruby
begin
  # Get Monitoring Timeseries
  data, status_code, headers = api_instance.get_monitoring_timeseries_with_http_info(monitoring_metric_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMonitoringTimeseriesResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling MonitoringApi->get_monitoring_timeseries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monitoring_metric_id** | **String** | ID of the Monitoring Metric |  |
| **filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a &#x60;!&#x60; character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * &#x60;filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;!country:US&#x60;  | [optional] |
| **timestamp** | **Integer** | Timestamp to use as the start of the timeseries data. This value must be provided as a unix timestamp. Defaults to 30 minutes ago. | [optional] |

### Return type

[**GetMonitoringTimeseriesResponse**](GetMonitoringTimeseriesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_monitoring_dimensions

> <ListMonitoringDimensionsResponse> list_monitoring_dimensions

List Monitoring Dimensions

Lists available monitoring dimensions.

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

api_instance = MuxRuby::MonitoringApi.new

begin
  # List Monitoring Dimensions
  result = api_instance.list_monitoring_dimensions
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling MonitoringApi->list_monitoring_dimensions: #{e}"
end
```

#### Using the list_monitoring_dimensions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMonitoringDimensionsResponse>, Integer, Hash)> list_monitoring_dimensions_with_http_info

```ruby
begin
  # List Monitoring Dimensions
  data, status_code, headers = api_instance.list_monitoring_dimensions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMonitoringDimensionsResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling MonitoringApi->list_monitoring_dimensions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListMonitoringDimensionsResponse**](ListMonitoringDimensionsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_monitoring_metrics

> <ListMonitoringMetricsResponse> list_monitoring_metrics

List Monitoring Metrics

Lists available monitoring metrics.

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

api_instance = MuxRuby::MonitoringApi.new

begin
  # List Monitoring Metrics
  result = api_instance.list_monitoring_metrics
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling MonitoringApi->list_monitoring_metrics: #{e}"
end
```

#### Using the list_monitoring_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMonitoringMetricsResponse>, Integer, Hash)> list_monitoring_metrics_with_http_info

```ruby
begin
  # List Monitoring Metrics
  data, status_code, headers = api_instance.list_monitoring_metrics_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMonitoringMetricsResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling MonitoringApi->list_monitoring_metrics_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListMonitoringMetricsResponse**](ListMonitoringMetricsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

