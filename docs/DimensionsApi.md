# MuxRuby::DimensionsApi

All URIs are relative to *https://api.mux.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_dimension_values**](DimensionsApi.md#list_dimension_values) | **GET** /data/v1/dimensions/{DIMENSION_ID} | Lists the values for a specific dimension
[**list_dimensions**](DimensionsApi.md#list_dimensions) | **GET** /data/v1/dimensions | List Dimensions


# **list_dimension_values**
> ListDimensionValuesResponse list_dimension_values(dimension_id, opts)

Lists the values for a specific dimension

Lists the values for a dimension along with a total count of related views.   Note: This API replaces the list-filter-values API call. 

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

api_instance = MuxRuby::DimensionsApi.new
dimension_id = 'abcd1234' # String | ID of the Dimension
opts = {
  limit: 25, # Integer | Number of items to include in the response
  page: 1, # Integer | Offset by this many pages, of the size of `limit`
  filters: ['filters_example'], # Array<String> | Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]=operating_system:windows&filters[]=country:US).  Possible filter names are the same as returned by the List Filters endpoint. 
  timeframe: ['timeframe_example'] # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]=1498867200&timeframe[]=1498953600    * duration string e.g. timeframe[]=24:hours or timeframe[]=7:days. 
}

begin
  #Lists the values for a specific dimension
  result = api_instance.list_dimension_values(dimension_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling DimensionsApi->list_dimension_values: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dimension_id** | **String**| ID of the Dimension | 
 **limit** | **Integer**| Number of items to include in the response | [optional] [default to 25]
 **page** | **Integer**| Offset by this many pages, of the size of &#x60;limit&#x60; | [optional] [default to 1]
 **filters** | [**Array&lt;String&gt;**](String.md)| Filter key:value pairs. Must be provided as an array query string parameter (e.g. filters[]&#x3D;operating_system:windows&amp;filters[]&#x3D;country:US).  Possible filter names are the same as returned by the List Filters endpoint.  | [optional] 
 **timeframe** | [**Array&lt;String&gt;**](String.md)| Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;). Accepted formats are...   * array of epoch timestamps e.g. timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600    * duration string e.g. timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days.  | [optional] 

### Return type

[**ListDimensionValuesResponse**](ListDimensionValuesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_dimensions**
> ListDimensionsResponse list_dimensions

List Dimensions

List all available dimensions.  Note: This API replaces the list-filters API call. 

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

api_instance = MuxRuby::DimensionsApi.new

begin
  #List Dimensions
  result = api_instance.list_dimensions
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling DimensionsApi->list_dimensions: #{e}"
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



