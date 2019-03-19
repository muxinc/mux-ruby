# MuxRuby::FiltersApi

All URIs are relative to *https://api.mux.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_filter_values**](FiltersApi.md#list_filter_values) | **GET** /data/v1/filters/{FILTER_ID} | Lists values for a specific filter
[**list_filters**](FiltersApi.md#list_filters) | **GET** /data/v1/filters | List Filters


# **list_filter_values**
> ListFilterValuesResponse list_filter_values(filter_id, opts)

Lists values for a specific filter

Lists the values for a filter along with a total count of related views 

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

api_instance = MuxRuby::FiltersApi.new
filter_id = 'abcd1234' # String | ID of the Filter
opts = {
  limit: 25, # Integer | Number of items to include in the response
  page: 1, # Integer | Offset by this many pages, of the size of `limit`
  filters: ['filters_example'], # Array<String> | Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]=operating_system:windows&filters[]=country:US).  Possible filter names are the same as returned by the List Filters endpoint. 
  timeframe: ['timeframe_example'] # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]=1498867200&timeframe[]=1498953600    * duration string e.g. timeframe[]=24:hours or timeframe[]=7:days. 
}

begin
  #Lists values for a specific filter
  result = api_instance.list_filter_values(filter_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling FiltersApi->list_filter_values: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_id** | **String**| ID of the Filter | 
 **limit** | **Integer**| Number of items to include in the response | [optional] [default to 25]
 **page** | **Integer**| Offset by this many pages, of the size of &#x60;limit&#x60; | [optional] [default to 1]
 **filters** | [**Array&lt;String&gt;**](String.md)| Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;country:US).  Possible filter names are the same as returned by the List Filters endpoint.  | [optional] 
 **timeframe** | [**Array&lt;String&gt;**](String.md)| Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600    * duration string e.g. timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days.  | [optional] 

### Return type

[**ListFilterValuesResponse**](ListFilterValuesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_filters**
> ListFiltersResponse list_filters

List Filters

Lists all the filters broken out into basic and advanced 

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

api_instance = MuxRuby::FiltersApi.new

begin
  #List Filters
  result = api_instance.list_filters
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling FiltersApi->list_filters: #{e}"
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



