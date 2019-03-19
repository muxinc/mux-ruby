# MuxRuby::MetricsApi

All URIs are relative to *https://api.mux.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_metric_timeseries_data**](MetricsApi.md#get_metric_timeseries_data) | **GET** /data/v1/metrics/{METRIC_ID}/timeseries | Get metric timeseries data
[**get_overall_values**](MetricsApi.md#get_overall_values) | **GET** /data/v1/metrics/{METRIC_ID}/overall | Get Overall values
[**list_all_metric_values**](MetricsApi.md#list_all_metric_values) | **GET** /data/v1/metrics/comparison | List all metric values
[**list_breakdown_values**](MetricsApi.md#list_breakdown_values) | **GET** /data/v1/metrics/{METRIC_ID}/breakdown | List breakdown values
[**list_insights**](MetricsApi.md#list_insights) | **GET** /data/v1/metrics/{METRIC_ID}/insights | List Insights


# **get_metric_timeseries_data**
> GetMetricTimeseriesDataResponse get_metric_timeseries_data(metric_id, opts)

Get metric timeseries data

Returns timeseries data for a specific metric 

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

api_instance = MuxRuby::MetricsApi.new
metric_id = 'video_startup_time' # String | ID of the Metric
opts = {
  timeframe: ['timeframe_example'], # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]=1498867200&timeframe[]=1498953600    * duration string e.g. timeframe[]=24:hours or timeframe[]=7:days. 
  filters: ['filters_example'], # Array<String> | Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]=operating_system:windows&filters[]=country:US).  Possible filter names are the same as returned by the List Filters endpoint. 
  measurement: 'measurement_example', # String | Measurement for the provided metric. If omitted, the deafult for the metric will be used.
  order_direction: 'order_direction_example', # String | Sort order.
  group_by: 'group_by_example' # String | Time granularity to group results by. If this value is omitted, a default granularity is chosen based on the supplied timeframe.
}

begin
  #Get metric timeseries data
  result = api_instance.get_metric_timeseries_data(metric_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling MetricsApi->get_metric_timeseries_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **String**| ID of the Metric | 
 **timeframe** | [**Array&lt;String&gt;**](String.md)| Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600    * duration string e.g. timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days.  | [optional] 
 **filters** | [**Array&lt;String&gt;**](String.md)| Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;country:US).  Possible filter names are the same as returned by the List Filters endpoint.  | [optional] 
 **measurement** | **String**| Measurement for the provided metric. If omitted, the deafult for the metric will be used. | [optional] 
 **order_direction** | **String**| Sort order. | [optional] 
 **group_by** | **String**| Time granularity to group results by. If this value is omitted, a default granularity is chosen based on the supplied timeframe. | [optional] 

### Return type

[**GetMetricTimeseriesDataResponse**](GetMetricTimeseriesDataResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_overall_values**
> GetOverallValuesResponse get_overall_values(metric_id, opts)

Get Overall values

Returns the overall value for a specific metric, as well as the total view count, watch time, and the Mux Global metric value for the metric. 

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

api_instance = MuxRuby::MetricsApi.new
metric_id = 'video_startup_time' # String | ID of the Metric
opts = {
  timeframe: ['timeframe_example'], # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]=1498867200&timeframe[]=1498953600    * duration string e.g. timeframe[]=24:hours or timeframe[]=7:days. 
  filters: ['filters_example'], # Array<String> | Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]=operating_system:windows&filters[]=country:US).  Possible filter names are the same as returned by the List Filters endpoint. 
  measurement: 'measurement_example' # String | Measurement for the provided metric. If omitted, the deafult for the metric will be used.
}

begin
  #Get Overall values
  result = api_instance.get_overall_values(metric_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling MetricsApi->get_overall_values: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **String**| ID of the Metric | 
 **timeframe** | [**Array&lt;String&gt;**](String.md)| Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600    * duration string e.g. timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days.  | [optional] 
 **filters** | [**Array&lt;String&gt;**](String.md)| Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;country:US).  Possible filter names are the same as returned by the List Filters endpoint.  | [optional] 
 **measurement** | **String**| Measurement for the provided metric. If omitted, the deafult for the metric will be used. | [optional] 

### Return type

[**GetOverallValuesResponse**](GetOverallValuesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_all_metric_values**
> ListAllMetricValuesResponse list_all_metric_values(opts)

List all metric values

List all of the values across every breakdown for a specific metric 

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

api_instance = MuxRuby::MetricsApi.new
opts = {
  timeframe: ['timeframe_example'], # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]=1498867200&timeframe[]=1498953600    * duration string e.g. timeframe[]=24:hours or timeframe[]=7:days. 
  filters: ['filters_example'], # Array<String> | Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]=operating_system:windows&filters[]=country:US).  Possible filter names are the same as returned by the List Filters endpoint. 
  dimension: 'dimension_example', # String | Dimension the specified value belongs to
  value: 'value_example' # String | Value to show all available metrics for
}

begin
  #List all metric values
  result = api_instance.list_all_metric_values(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling MetricsApi->list_all_metric_values: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeframe** | [**Array&lt;String&gt;**](String.md)| Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600    * duration string e.g. timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days.  | [optional] 
 **filters** | [**Array&lt;String&gt;**](String.md)| Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;country:US).  Possible filter names are the same as returned by the List Filters endpoint.  | [optional] 
 **dimension** | **String**| Dimension the specified value belongs to | [optional] 
 **value** | **String**| Value to show all available metrics for | [optional] 

### Return type

[**ListAllMetricValuesResponse**](ListAllMetricValuesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_breakdown_values**
> ListBreakdownValuesResponse list_breakdown_values(metric_id, opts)

List breakdown values

List the breakdown values for a specific metric 

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

api_instance = MuxRuby::MetricsApi.new
metric_id = 'video_startup_time' # String | ID of the Metric
opts = {
  group_by: 'group_by_example', # String | Breakdown value to group the results by
  measurement: 'measurement_example', # String | Measurement for the provided metric. If omitted, the deafult for the metric will be used.
  filters: ['filters_example'], # Array<String> | Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]=operating_system:windows&filters[]=country:US).  Possible filter names are the same as returned by the List Filters endpoint. 
  limit: 25, # Integer | Number of items to include in the response
  page: 1, # Integer | Offset by this many pages, of the size of `limit`
  order_by: 'order_by_example', # String | Value to order the results by
  order_direction: 'order_direction_example', # String | Sort order.
  timeframe: ['timeframe_example'] # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]=1498867200&timeframe[]=1498953600    * duration string e.g. timeframe[]=24:hours or timeframe[]=7:days. 
}

begin
  #List breakdown values
  result = api_instance.list_breakdown_values(metric_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling MetricsApi->list_breakdown_values: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **String**| ID of the Metric | 
 **group_by** | **String**| Breakdown value to group the results by | [optional] 
 **measurement** | **String**| Measurement for the provided metric. If omitted, the deafult for the metric will be used. | [optional] 
 **filters** | [**Array&lt;String&gt;**](String.md)| Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;country:US).  Possible filter names are the same as returned by the List Filters endpoint.  | [optional] 
 **limit** | **Integer**| Number of items to include in the response | [optional] [default to 25]
 **page** | **Integer**| Offset by this many pages, of the size of &#x60;limit&#x60; | [optional] [default to 1]
 **order_by** | **String**| Value to order the results by | [optional] 
 **order_direction** | **String**| Sort order. | [optional] 
 **timeframe** | [**Array&lt;String&gt;**](String.md)| Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600    * duration string e.g. timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days.  | [optional] 

### Return type

[**ListBreakdownValuesResponse**](ListBreakdownValuesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_insights**
> ListInsightsResponse list_insights(metric_id, opts)

List Insights

Returns a list of insights for a metric. These are the worst performing values across all breakdowns sorted by how much they negatively impact a specific metric. 

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

api_instance = MuxRuby::MetricsApi.new
metric_id = 'video_startup_time' # String | ID of the Metric
opts = {
  measurement: 'measurement_example', # String | Measurement for the provided metric. If omitted, the deafult for the metric will be used.
  order_direction: 'order_direction_example', # String | Sort order.
  timeframe: ['timeframe_example'] # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]=1498867200&timeframe[]=1498953600    * duration string e.g. timeframe[]=24:hours or timeframe[]=7:days. 
}

begin
  #List Insights
  result = api_instance.list_insights(metric_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling MetricsApi->list_insights: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric_id** | **String**| ID of the Metric | 
 **measurement** | **String**| Measurement for the provided metric. If omitted, the deafult for the metric will be used. | [optional] 
 **order_direction** | **String**| Sort order. | [optional] 
 **timeframe** | [**Array&lt;String&gt;**](String.md)| Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600    * duration string e.g. timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days.  | [optional] 

### Return type

[**ListInsightsResponse**](ListInsightsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



