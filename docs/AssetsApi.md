# MuxRuby::AssetsApi

All URIs are relative to *https://api.mux.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_asset**](AssetsApi.md#create_asset) | **POST** /video/v1/assets | Create an asset
[**create_asset_playback_id**](AssetsApi.md#create_asset_playback_id) | **POST** /video/v1/assets/{ASSET_ID}/playback-ids | Create a playback ID
[**delete_asset**](AssetsApi.md#delete_asset) | **DELETE** /video/v1/assets/{ASSET_ID} | Delete an asset
[**delete_asset_playback_id**](AssetsApi.md#delete_asset_playback_id) | **DELETE** /video/v1/assets/{ASSET_ID}/playback-ids/{PLAYBACK_ID} | Delete a playback ID
[**get_asset**](AssetsApi.md#get_asset) | **GET** /video/v1/assets/{ASSET_ID} | Retrieve an asset
[**get_asset_input_info**](AssetsApi.md#get_asset_input_info) | **GET** /video/v1/assets/{ASSET_ID}/input-info | Retrieve asset input info
[**get_asset_playback_id**](AssetsApi.md#get_asset_playback_id) | **GET** /video/v1/assets/{ASSET_ID}/playback-ids/{PLAYBACK_ID} | Retrieve a playback ID
[**list_assets**](AssetsApi.md#list_assets) | **GET** /video/v1/assets | List assets
[**update_asset_mp4_support**](AssetsApi.md#update_asset_mp4_support) | **PUT** /video/v1/assets/{ASSET_ID}/mp4-support | Update MP4 support


# **create_asset**
> AssetResponse create_asset(create_asset_request)

Create an asset

Create a new Mux Video asset. 

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

api_instance = MuxRuby::AssetsApi.new
create_asset_request = MuxRuby::CreateAssetRequest.new # CreateAssetRequest | 

begin
  #Create an asset
  result = api_instance.create_asset(create_asset_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling AssetsApi->create_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_asset_request** | [**CreateAssetRequest**](CreateAssetRequest.md)|  | 

### Return type

[**AssetResponse**](AssetResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_asset_playback_id**
> CreatePlaybackIDResponse create_asset_playback_id(asset_id, create_playback_id_request)

Create a playback ID

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.
create_playback_id_request = MuxRuby::CreatePlaybackIDRequest.new # CreatePlaybackIDRequest | 

begin
  #Create a playback ID
  result = api_instance.create_asset_playback_id(asset_id, create_playback_id_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling AssetsApi->create_asset_playback_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **String**| The asset ID. | 
 **create_playback_id_request** | [**CreatePlaybackIDRequest**](CreatePlaybackIDRequest.md)|  | 

### Return type

[**CreatePlaybackIDResponse**](CreatePlaybackIDResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_asset**
> delete_asset(asset_id)

Delete an asset

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.

begin
  #Delete an asset
  api_instance.delete_asset(asset_id)
rescue MuxRuby::ApiError => e
  puts "Exception when calling AssetsApi->delete_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **String**| The asset ID. | 

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_asset_playback_id**
> delete_asset_playback_id(asset_id, playback_id)

Delete a playback ID

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.
playback_id = 'playback_id_example' # String | The live stream's playback ID.

begin
  #Delete a playback ID
  api_instance.delete_asset_playback_id(asset_id, playback_id)
rescue MuxRuby::ApiError => e
  puts "Exception when calling AssetsApi->delete_asset_playback_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **String**| The asset ID. | 
 **playback_id** | **String**| The live stream&#39;s playback ID. | 

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_asset**
> AssetResponse get_asset(asset_id)

Retrieve an asset

Retrieves the details of an asset that has previously been created. Supply the unique asset ID that was returned from your previous request, and Mux will return the corresponding asset information. The same information is returned when creating an asset.

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.

begin
  #Retrieve an asset
  result = api_instance.get_asset(asset_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling AssetsApi->get_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **String**| The asset ID. | 

### Return type

[**AssetResponse**](AssetResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_asset_input_info**
> GetAssetInputInfoResponse get_asset_input_info(asset_id)

Retrieve asset input info

Returns a list of the input objects that were used to create the asset along with any settings that were applied to each input.

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.

begin
  #Retrieve asset input info
  result = api_instance.get_asset_input_info(asset_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling AssetsApi->get_asset_input_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **String**| The asset ID. | 

### Return type

[**GetAssetInputInfoResponse**](GetAssetInputInfoResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_asset_playback_id**
> GetAssetPlaybackIDResponse get_asset_playback_id(asset_id, playback_id)

Retrieve a playback ID

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.
playback_id = 'playback_id_example' # String | The live stream's playback ID.

begin
  #Retrieve a playback ID
  result = api_instance.get_asset_playback_id(asset_id, playback_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling AssetsApi->get_asset_playback_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **String**| The asset ID. | 
 **playback_id** | **String**| The live stream&#39;s playback ID. | 

### Return type

[**GetAssetPlaybackIDResponse**](GetAssetPlaybackIDResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_assets**
> ListAssetsResponse list_assets(opts)

List assets

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

api_instance = MuxRuby::AssetsApi.new
opts = {
  limit: 25, # Integer | Number of items to include in the response
  page: 1 # Integer | Offset by this many pages, of the size of `limit`
}

begin
  #List assets
  result = api_instance.list_assets(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling AssetsApi->list_assets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of items to include in the response | [optional] [default to 25]
 **page** | **Integer**| Offset by this many pages, of the size of &#x60;limit&#x60; | [optional] [default to 1]

### Return type

[**ListAssetsResponse**](ListAssetsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_asset_mp4_support**
> AssetResponse update_asset_mp4_support(asset_id, update_asset_mp4_support_request)

Update MP4 support

Allows you add or remove mp4 support for assets that were created without it. Currently there are two values supported in this request, `standard` and `none`. `none` means that an asset *does not* have mp4 support, so submitting a request with `mp4_support` set to `none` will delete the mp4 assets from the asset in question.

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

api_instance = MuxRuby::AssetsApi.new
asset_id = 'asset_id_example' # String | The asset ID.
update_asset_mp4_support_request = MuxRuby::UpdateAssetMP4SupportRequest.new # UpdateAssetMP4SupportRequest | 

begin
  #Update MP4 support
  result = api_instance.update_asset_mp4_support(asset_id, update_asset_mp4_support_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling AssetsApi->update_asset_mp4_support: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **String**| The asset ID. | 
 **update_asset_mp4_support_request** | [**UpdateAssetMP4SupportRequest**](UpdateAssetMP4SupportRequest.md)|  | 

### Return type

[**AssetResponse**](AssetResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



