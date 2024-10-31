# MuxRuby::VideoViewsApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_video_view**](VideoViewsApi.md#get_video_view) | **GET** /data/v1/video-views/{VIDEO_VIEW_ID} | Get a Video View |
| [**list_video_views**](VideoViewsApi.md#list_video_views) | **GET** /data/v1/video-views | List Video Views |


## get_video_view

> <VideoViewResponse> get_video_view(video_view_id)

Get a Video View

Returns the details of a video view.

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

api_instance = MuxRuby::VideoViewsApi.new
video_view_id = 'abcd1234' # String | ID of the Video View

begin
  # Get a Video View
  result = api_instance.get_video_view(video_view_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling VideoViewsApi->get_video_view: #{e}"
end
```

#### Using the get_video_view_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VideoViewResponse>, Integer, Hash)> get_video_view_with_http_info(video_view_id)

```ruby
begin
  # Get a Video View
  data, status_code, headers = api_instance.get_video_view_with_http_info(video_view_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VideoViewResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling VideoViewsApi->get_video_view_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_view_id** | **String** | ID of the Video View |  |

### Return type

[**VideoViewResponse**](VideoViewResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_video_views

> <ListVideoViewsResponse> list_video_views(opts)

List Video Views

Returns a list of video views which match the filters and have a `view_end` within the specified timeframe.

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

api_instance = MuxRuby::VideoViewsApi.new
opts = {
  limit: 56, # Integer | Number of items to include in the response
  page: 56, # Integer | Offset by this many pages, of the size of `limit`
  viewer_id: 'viewer_id_example', # String | Viewer ID to filter results by. This value may be provided by the integration, or may be created by Mux.
  error_id: 56, # Integer | Filter video views by the provided error ID (as returned in the error_type_id field in the list video views endpoint). If you provide any as the error ID, this will filter the results to those with any error.
  order_direction: 'asc', # String | Sort order.
  filters: ['inner_example'], # Array<String> | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a `!` character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * `filters[]=operating_system:windows&filters[]=!country:US` 
  metric_filters: ['inner_example'], # Array<String> | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of `exits_before_video_start`, `unique_viewers`, `video_startup_failure_percentage`, `view_dropped_percentage`, and `views`.  Example:    * `metric_filters[]=aggregate_startup_time>=1000` 
  timeframe: ['inner_example'] # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=).  Accepted formats are...    * array of epoch timestamps e.g. `timeframe[]=1498867200&timeframe[]=1498953600`   * duration string e.g. `timeframe[]=24:hours or timeframe[]=7:days` 
}

begin
  # List Video Views
  result = api_instance.list_video_views(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling VideoViewsApi->list_video_views: #{e}"
end
```

#### Using the list_video_views_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVideoViewsResponse>, Integer, Hash)> list_video_views_with_http_info(opts)

```ruby
begin
  # List Video Views
  data, status_code, headers = api_instance.list_video_views_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVideoViewsResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling VideoViewsApi->list_video_views_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 25] |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |
| **viewer_id** | **String** | Viewer ID to filter results by. This value may be provided by the integration, or may be created by Mux. | [optional] |
| **error_id** | **Integer** | Filter video views by the provided error ID (as returned in the error_type_id field in the list video views endpoint). If you provide any as the error ID, this will filter the results to those with any error. | [optional] |
| **order_direction** | **String** | Sort order. | [optional] |
| **filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match conditions from provided key:value pairs. Must be provided as an array query string parameter.  To exclude rows that match a certain condition, prepend a &#x60;!&#x60; character to the dimension.  Possible filter names are the same as returned by the List Filters endpoint.  Example:    * &#x60;filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;!country:US&#x60;  | [optional] |
| **metric_filters** | [**Array&lt;String&gt;**](String.md) | Limit the results to rows that match inequality conditions from provided metric comparison clauses. Must be provided as an array query string parameter.  Possible filterable metrics are the same as the set of metric ids, with the exceptions of &#x60;exits_before_video_start&#x60;, &#x60;unique_viewers&#x60;, &#x60;video_startup_failure_percentage&#x60;, &#x60;view_dropped_percentage&#x60;, and &#x60;views&#x60;.  Example:    * &#x60;metric_filters[]&#x3D;aggregate_startup_time&gt;&#x3D;1000&#x60;  | [optional] |
| **timeframe** | [**Array&lt;String&gt;**](String.md) | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;).  Accepted formats are...    * array of epoch timestamps e.g. &#x60;timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600&#x60;   * duration string e.g. &#x60;timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days&#x60;  | [optional] |

### Return type

[**ListVideoViewsResponse**](ListVideoViewsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

