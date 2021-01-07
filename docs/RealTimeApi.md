# MuxRuby::RealTimeApi

All URIs are relative to *https://api.mux.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_realtime_breakdown**](RealTimeApi.md#get_realtime_breakdown) | **GET** /data/v1/realtime/metrics/{REALTIME_METRIC_ID}/breakdown | Get Real-Time Breakdown
[**get_realtime_histogram_timeseries**](RealTimeApi.md#get_realtime_histogram_timeseries) | **GET** /data/v1/realtime/metrics/{REALTIME_METRIC_ID}/histogram-timeseries | Get Real-Time Histogram Timeseries
[**get_realtime_timeseries**](RealTimeApi.md#get_realtime_timeseries) | **GET** /data/v1/realtime/metrics/{REALTIME_METRIC_ID}/timeseries | Get Real-Time Timeseries
[**list_realtime_dimensions**](RealTimeApi.md#list_realtime_dimensions) | **GET** /data/v1/realtime/dimensions | List Real-Time Dimensions
[**list_realtime_metrics**](RealTimeApi.md#list_realtime_metrics) | **GET** /data/v1/realtime/metrics | List Real-Time Metrics


# **get_realtime_breakdown**
> GetRealTimeBreakdownResponse get_realtime_breakdown(realtime_metric_id, opts)

Get Real-Time Breakdown

Gets breakdown information for a specific dimension and metric along with the number of concurrent viewers and negative impact score. 

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

api_instance = MuxRuby::RealTimeApi.new
realtime_metric_id = 'video-startup-time' # String | ID of the Realtime Metric
opts = {
  dimension: 'dimension_example', # String | Dimension the specified value belongs to
  timestamp: 3.4, # Float | Timestamp to limit results by. This value must be provided as a unix timestamp. Defaults to the current unix timestamp.
  filters: ['filters_example'], # Array<String> | Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]=operating_system:windows&filters[]=country:US).  Possible filter names are the same as returned by the List Filters endpoint. 
  order_by: 'order_by_example', # String | Value to order the results by
  order_direction: 'order_direction_example' # String | Sort order.
}

begin
  #Get Real-Time Breakdown
  result = api_instance.get_realtime_breakdown(realtime_metric_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling RealTimeApi->get_realtime_breakdown: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **realtime_metric_id** | **String**| ID of the Realtime Metric | 
 **dimension** | **String**| Dimension the specified value belongs to | [optional] 
 **timestamp** | **Float**| Timestamp to limit results by. This value must be provided as a unix timestamp. Defaults to the current unix timestamp. | [optional] 
 **filters** | [**Array&lt;String&gt;**](String.md)| Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;country:US).  Possible filter names are the same as returned by the List Filters endpoint.  | [optional] 
 **order_by** | **String**| Value to order the results by | [optional] 
 **order_direction** | **String**| Sort order. | [optional] 

### Return type

[**GetRealTimeBreakdownResponse**](GetRealTimeBreakdownResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_realtime_histogram_timeseries**
> GetRealTimeHistogramTimeseriesResponse get_realtime_histogram_timeseries(realtime_metric_id, opts)

Get Real-Time Histogram Timeseries

Gets histogram timeseries information for a specific metric. 

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

api_instance = MuxRuby::RealTimeApi.new
realtime_metric_id = 'video-startup-time' # String | ID of the Realtime Metric
opts = {
  filters: ['filters_example'] # Array<String> | Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]=operating_system:windows&filters[]=country:US).  Possible filter names are the same as returned by the List Filters endpoint. 
}

begin
  #Get Real-Time Histogram Timeseries
  result = api_instance.get_realtime_histogram_timeseries(realtime_metric_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling RealTimeApi->get_realtime_histogram_timeseries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **realtime_metric_id** | **String**| ID of the Realtime Metric | 
 **filters** | [**Array&lt;String&gt;**](String.md)| Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;country:US).  Possible filter names are the same as returned by the List Filters endpoint.  | [optional] 

### Return type

[**GetRealTimeHistogramTimeseriesResponse**](GetRealTimeHistogramTimeseriesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_realtime_timeseries**
> GetRealTimeTimeseriesResponse get_realtime_timeseries(realtime_metric_id, opts)

Get Real-Time Timeseries

Gets Time series information for a specific metric along with the number of concurrent viewers. 

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

api_instance = MuxRuby::RealTimeApi.new
realtime_metric_id = 'video-startup-time' # String | ID of the Realtime Metric
opts = {
  filters: ['filters_example'] # Array<String> | Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]=operating_system:windows&filters[]=country:US).  Possible filter names are the same as returned by the List Filters endpoint. 
}

begin
  #Get Real-Time Timeseries
  result = api_instance.get_realtime_timeseries(realtime_metric_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling RealTimeApi->get_realtime_timeseries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **realtime_metric_id** | **String**| ID of the Realtime Metric | 
 **filters** | [**Array&lt;String&gt;**](String.md)| Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;country:US).  Possible filter names are the same as returned by the List Filters endpoint.  | [optional] 

### Return type

[**GetRealTimeTimeseriesResponse**](GetRealTimeTimeseriesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_realtime_dimensions**
> ListRealTimeDimensionsResponse list_realtime_dimensions

List Real-Time Dimensions

Lists availiable real-time dimensions 

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

api_instance = MuxRuby::RealTimeApi.new

begin
  #List Real-Time Dimensions
  result = api_instance.list_realtime_dimensions
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling RealTimeApi->list_realtime_dimensions: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListRealTimeDimensionsResponse**](ListRealTimeDimensionsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_realtime_metrics**
> ListRealTimeMetricsResponse list_realtime_metrics

List Real-Time Metrics

Lists availiable real-time metrics. 

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

api_instance = MuxRuby::RealTimeApi.new

begin
  #List Real-Time Metrics
  result = api_instance.list_realtime_metrics
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling RealTimeApi->list_realtime_metrics: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListRealTimeMetricsResponse**](ListRealTimeMetricsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



