# MuxRuby::ExportsApi

All URIs are relative to *https://api.mux.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_exports**](ExportsApi.md#list_exports) | **GET** /data/v1/exports | List property video view export links


# **list_exports**
> ListExportsResponse list_exports

List property video view export links

Lists the available video view exports along with URLs to retrieve them 

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

api_instance = MuxRuby::ExportsApi.new

begin
  #List property video view export links
  result = api_instance.list_exports
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling ExportsApi->list_exports: #{e}"
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



