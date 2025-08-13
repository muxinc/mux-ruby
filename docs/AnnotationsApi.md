# MuxRuby::AnnotationsApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_annotation**](AnnotationsApi.md#create_annotation) | **POST** /data/v1/annotations | Create Annotation |
| [**delete_annotation**](AnnotationsApi.md#delete_annotation) | **DELETE** /data/v1/annotations/{ANNOTATION_ID} | Delete Annotation |
| [**get_annotation**](AnnotationsApi.md#get_annotation) | **GET** /data/v1/annotations/{ANNOTATION_ID} | Get Annotation |
| [**list_annotations**](AnnotationsApi.md#list_annotations) | **GET** /data/v1/annotations | List Annotations |
| [**update_annotation**](AnnotationsApi.md#update_annotation) | **PATCH** /data/v1/annotations/{ANNOTATION_ID} | Update Annotation |


## create_annotation

> <AnnotationResponse> create_annotation(annotation_input)

Create Annotation

Creates a new annotation.

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

api_instance = MuxRuby::AnnotationsApi.new
annotation_input = MuxRuby::AnnotationInput.new # AnnotationInput | 

begin
  # Create Annotation
  result = api_instance.create_annotation(annotation_input)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling AnnotationsApi->create_annotation: #{e}"
end
```

#### Using the create_annotation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnnotationResponse>, Integer, Hash)> create_annotation_with_http_info(annotation_input)

```ruby
begin
  # Create Annotation
  data, status_code, headers = api_instance.create_annotation_with_http_info(annotation_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnnotationResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling AnnotationsApi->create_annotation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annotation_input** | [**AnnotationInput**](AnnotationInput.md) |  |  |

### Return type

[**AnnotationResponse**](AnnotationResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_annotation

> delete_annotation(annotation_id)

Delete Annotation

Deletes an annotation.

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

api_instance = MuxRuby::AnnotationsApi.new
annotation_id = TODO # String | The annotation ID

begin
  # Delete Annotation
  api_instance.delete_annotation(annotation_id)
rescue MuxRuby::ApiError => e
  puts "Error when calling AnnotationsApi->delete_annotation: #{e}"
end
```

#### Using the delete_annotation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_annotation_with_http_info(annotation_id)

```ruby
begin
  # Delete Annotation
  data, status_code, headers = api_instance.delete_annotation_with_http_info(annotation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MuxRuby::ApiError => e
  puts "Error when calling AnnotationsApi->delete_annotation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annotation_id** | [**String**](.md) | The annotation ID |  |

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_annotation

> <AnnotationResponse> get_annotation(annotation_id)

Get Annotation

Returns the details of a specific annotation.

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

api_instance = MuxRuby::AnnotationsApi.new
annotation_id = TODO # String | The annotation ID

begin
  # Get Annotation
  result = api_instance.get_annotation(annotation_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling AnnotationsApi->get_annotation: #{e}"
end
```

#### Using the get_annotation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnnotationResponse>, Integer, Hash)> get_annotation_with_http_info(annotation_id)

```ruby
begin
  # Get Annotation
  data, status_code, headers = api_instance.get_annotation_with_http_info(annotation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnnotationResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling AnnotationsApi->get_annotation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annotation_id** | [**String**](.md) | The annotation ID |  |

### Return type

[**AnnotationResponse**](AnnotationResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_annotations

> <ListAnnotationsResponse> list_annotations(opts)

List Annotations

Returns a list of annotations.

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

api_instance = MuxRuby::AnnotationsApi.new
opts = {
  limit: 56, # Integer | Number of items to include in the response
  page: 56, # Integer | Offset by this many pages, of the size of `limit`
  order_direction: 'asc', # String | Sort order.
  timeframe: ['inner_example'] # Array<String> | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]=).  Accepted formats are...    * array of epoch timestamps e.g. `timeframe[]=1498867200&timeframe[]=1498953600`   * duration string e.g. `timeframe[]=24:hours or timeframe[]=7:days` 
}

begin
  # List Annotations
  result = api_instance.list_annotations(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling AnnotationsApi->list_annotations: #{e}"
end
```

#### Using the list_annotations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAnnotationsResponse>, Integer, Hash)> list_annotations_with_http_info(opts)

```ruby
begin
  # List Annotations
  data, status_code, headers = api_instance.list_annotations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAnnotationsResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling AnnotationsApi->list_annotations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 25] |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |
| **order_direction** | **String** | Sort order. | [optional] |
| **timeframe** | [**Array&lt;String&gt;**](String.md) | Timeframe window to limit results by. Must be provided as an array query string parameter (e.g. timeframe[]&#x3D;).  Accepted formats are...    * array of epoch timestamps e.g. &#x60;timeframe[]&#x3D;1498867200&amp;timeframe[]&#x3D;1498953600&#x60;   * duration string e.g. &#x60;timeframe[]&#x3D;24:hours or timeframe[]&#x3D;7:days&#x60;  | [optional] |

### Return type

[**ListAnnotationsResponse**](ListAnnotationsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_annotation

> <AnnotationResponse> update_annotation(annotation_id, annotation_input)

Update Annotation

Updates an existing annotation.

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

api_instance = MuxRuby::AnnotationsApi.new
annotation_id = TODO # String | The annotation ID
annotation_input = MuxRuby::AnnotationInput.new # AnnotationInput | 

begin
  # Update Annotation
  result = api_instance.update_annotation(annotation_id, annotation_input)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling AnnotationsApi->update_annotation: #{e}"
end
```

#### Using the update_annotation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnnotationResponse>, Integer, Hash)> update_annotation_with_http_info(annotation_id, annotation_input)

```ruby
begin
  # Update Annotation
  data, status_code, headers = api_instance.update_annotation_with_http_info(annotation_id, annotation_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnnotationResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling AnnotationsApi->update_annotation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annotation_id** | [**String**](.md) | The annotation ID |  |
| **annotation_input** | [**AnnotationInput**](AnnotationInput.md) |  |  |

### Return type

[**AnnotationResponse**](AnnotationResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

