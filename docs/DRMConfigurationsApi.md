# MuxRuby::DRMConfigurationsApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_drm_configuration**](DRMConfigurationsApi.md#get_drm_configuration) | **GET** /video/v1/drm-configurations/{DRM_CONFIGURATION_ID} | Retrieve a DRM Configuration |
| [**list_drm_configurations**](DRMConfigurationsApi.md#list_drm_configurations) | **GET** /video/v1/drm-configurations | List DRM Configurations |


## get_drm_configuration

> <DRMConfigurationResponse> get_drm_configuration(drm_configuration_id)

Retrieve a DRM Configuration

Retrieves a single DRM Configuration.

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

api_instance = MuxRuby::DRMConfigurationsApi.new
drm_configuration_id = 'drm_configuration_id_example' # String | The DRM Configuration ID.

begin
  # Retrieve a DRM Configuration
  result = api_instance.get_drm_configuration(drm_configuration_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling DRMConfigurationsApi->get_drm_configuration: #{e}"
end
```

#### Using the get_drm_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRMConfigurationResponse>, Integer, Hash)> get_drm_configuration_with_http_info(drm_configuration_id)

```ruby
begin
  # Retrieve a DRM Configuration
  data, status_code, headers = api_instance.get_drm_configuration_with_http_info(drm_configuration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRMConfigurationResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling DRMConfigurationsApi->get_drm_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **drm_configuration_id** | **String** | The DRM Configuration ID. |  |

### Return type

[**DRMConfigurationResponse**](DRMConfigurationResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_drm_configurations

> <ListDRMConfigurationsResponse> list_drm_configurations(opts)

List DRM Configurations

Returns a list of DRM Configurations

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

api_instance = MuxRuby::DRMConfigurationsApi.new
opts = {
  page: 56, # Integer | Offset by this many pages, of the size of `limit`
  limit: 56 # Integer | Number of items to include in the response
}

begin
  # List DRM Configurations
  result = api_instance.list_drm_configurations(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling DRMConfigurationsApi->list_drm_configurations: #{e}"
end
```

#### Using the list_drm_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDRMConfigurationsResponse>, Integer, Hash)> list_drm_configurations_with_http_info(opts)

```ruby
begin
  # List DRM Configurations
  data, status_code, headers = api_instance.list_drm_configurations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDRMConfigurationsResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling DRMConfigurationsApi->list_drm_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 25] |

### Return type

[**ListDRMConfigurationsResponse**](ListDRMConfigurationsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

