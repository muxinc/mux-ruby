# MuxRuby::DirectUploadsApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_direct_upload**](DirectUploadsApi.md#cancel_direct_upload) | **PUT** /video/v1/uploads/{UPLOAD_ID}/cancel | Cancel a direct upload |
| [**create_direct_upload**](DirectUploadsApi.md#create_direct_upload) | **POST** /video/v1/uploads | Create a new direct upload URL |
| [**get_direct_upload**](DirectUploadsApi.md#get_direct_upload) | **GET** /video/v1/uploads/{UPLOAD_ID} | Retrieve a single direct upload&#39;s info |
| [**list_direct_uploads**](DirectUploadsApi.md#list_direct_uploads) | **GET** /video/v1/uploads | List direct uploads |


## cancel_direct_upload

> <UploadResponse> cancel_direct_upload(upload_id)

Cancel a direct upload

Cancels a direct upload and marks it as cancelled. If a pending upload finishes after this request, no asset will be created. This request will only succeed if the upload is still in the `waiting` state. 

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

api_instance = MuxRuby::DirectUploadsApi.new
upload_id = 'abcd1234' # String | ID of the Upload

begin
  # Cancel a direct upload
  result = api_instance.cancel_direct_upload(upload_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling DirectUploadsApi->cancel_direct_upload: #{e}"
end
```

#### Using the cancel_direct_upload_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadResponse>, Integer, Hash)> cancel_direct_upload_with_http_info(upload_id)

```ruby
begin
  # Cancel a direct upload
  data, status_code, headers = api_instance.cancel_direct_upload_with_http_info(upload_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling DirectUploadsApi->cancel_direct_upload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upload_id** | **String** | ID of the Upload |  |

### Return type

[**UploadResponse**](UploadResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_direct_upload

> <UploadResponse> create_direct_upload(create_upload_request)

Create a new direct upload URL

Creates a new direct upload, through which video content can be uploaded for ingest to Mux.

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

api_instance = MuxRuby::DirectUploadsApi.new
create_upload_request = MuxRuby::CreateUploadRequest.new # CreateUploadRequest | 

begin
  # Create a new direct upload URL
  result = api_instance.create_direct_upload(create_upload_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling DirectUploadsApi->create_direct_upload: #{e}"
end
```

#### Using the create_direct_upload_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadResponse>, Integer, Hash)> create_direct_upload_with_http_info(create_upload_request)

```ruby
begin
  # Create a new direct upload URL
  data, status_code, headers = api_instance.create_direct_upload_with_http_info(create_upload_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling DirectUploadsApi->create_direct_upload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_upload_request** | [**CreateUploadRequest**](CreateUploadRequest.md) |  |  |

### Return type

[**UploadResponse**](UploadResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_direct_upload

> <UploadResponse> get_direct_upload(upload_id)

Retrieve a single direct upload's info

Fetches information about a single direct upload in the current environment.

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

api_instance = MuxRuby::DirectUploadsApi.new
upload_id = 'abcd1234' # String | ID of the Upload

begin
  # Retrieve a single direct upload's info
  result = api_instance.get_direct_upload(upload_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling DirectUploadsApi->get_direct_upload: #{e}"
end
```

#### Using the get_direct_upload_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadResponse>, Integer, Hash)> get_direct_upload_with_http_info(upload_id)

```ruby
begin
  # Retrieve a single direct upload's info
  data, status_code, headers = api_instance.get_direct_upload_with_http_info(upload_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling DirectUploadsApi->get_direct_upload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upload_id** | **String** | ID of the Upload |  |

### Return type

[**UploadResponse**](UploadResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_direct_uploads

> <ListUploadsResponse> list_direct_uploads(opts)

List direct uploads

Lists direct uploads in the current environment.

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

api_instance = MuxRuby::DirectUploadsApi.new
opts = {
  limit: 56, # Integer | Number of items to include in the response
  page: 56 # Integer | Offset by this many pages, of the size of `limit`
}

begin
  # List direct uploads
  result = api_instance.list_direct_uploads(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling DirectUploadsApi->list_direct_uploads: #{e}"
end
```

#### Using the list_direct_uploads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUploadsResponse>, Integer, Hash)> list_direct_uploads_with_http_info(opts)

```ruby
begin
  # List direct uploads
  data, status_code, headers = api_instance.list_direct_uploads_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUploadsResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling DirectUploadsApi->list_direct_uploads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 25] |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |

### Return type

[**ListUploadsResponse**](ListUploadsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

