# MuxRuby::URLSigningKeysApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_url_signing_key**](URLSigningKeysApi.md#create_url_signing_key) | **POST** /video/v1/signing-keys | Create a URL signing key |
| [**delete_url_signing_key**](URLSigningKeysApi.md#delete_url_signing_key) | **DELETE** /video/v1/signing-keys/{SIGNING_KEY_ID} | Delete a URL signing key |
| [**get_url_signing_key**](URLSigningKeysApi.md#get_url_signing_key) | **GET** /video/v1/signing-keys/{SIGNING_KEY_ID} | Retrieve a URL signing key |
| [**list_url_signing_keys**](URLSigningKeysApi.md#list_url_signing_keys) | **GET** /video/v1/signing-keys | List URL signing keys |


## create_url_signing_key

> <SigningKeyResponse> create_url_signing_key

Create a URL signing key

Creates a new signing key pair. When creating a new signing key, the API will generate a 2048-bit RSA key-pair and return the private key and a generated key-id; the public key will be stored at Mux to validate signed tokens.

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

api_instance = MuxRuby::URLSigningKeysApi.new

begin
  # Create a URL signing key
  result = api_instance.create_url_signing_key
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling URLSigningKeysApi->create_url_signing_key: #{e}"
end
```

#### Using the create_url_signing_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SigningKeyResponse>, Integer, Hash)> create_url_signing_key_with_http_info

```ruby
begin
  # Create a URL signing key
  data, status_code, headers = api_instance.create_url_signing_key_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SigningKeyResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling URLSigningKeysApi->create_url_signing_key_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SigningKeyResponse**](SigningKeyResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_url_signing_key

> delete_url_signing_key(signing_key_id)

Delete a URL signing key

Deletes an existing signing key. Use with caution, as this will invalidate any existing signatures and no URLs can be signed using the key again.

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

api_instance = MuxRuby::URLSigningKeysApi.new
signing_key_id = 'signing_key_id_example' # String | The ID of the signing key.

begin
  # Delete a URL signing key
  api_instance.delete_url_signing_key(signing_key_id)
rescue MuxRuby::ApiError => e
  puts "Error when calling URLSigningKeysApi->delete_url_signing_key: #{e}"
end
```

#### Using the delete_url_signing_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_url_signing_key_with_http_info(signing_key_id)

```ruby
begin
  # Delete a URL signing key
  data, status_code, headers = api_instance.delete_url_signing_key_with_http_info(signing_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MuxRuby::ApiError => e
  puts "Error when calling URLSigningKeysApi->delete_url_signing_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signing_key_id** | **String** | The ID of the signing key. |  |

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_url_signing_key

> <SigningKeyResponse> get_url_signing_key(signing_key_id)

Retrieve a URL signing key

Retrieves the details of a URL signing key that has previously been created. Supply the unique signing key ID that was returned from your previous request, and Mux will return the corresponding signing key information. **The private key is not returned in this response.** 

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

api_instance = MuxRuby::URLSigningKeysApi.new
signing_key_id = 'signing_key_id_example' # String | The ID of the signing key.

begin
  # Retrieve a URL signing key
  result = api_instance.get_url_signing_key(signing_key_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling URLSigningKeysApi->get_url_signing_key: #{e}"
end
```

#### Using the get_url_signing_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SigningKeyResponse>, Integer, Hash)> get_url_signing_key_with_http_info(signing_key_id)

```ruby
begin
  # Retrieve a URL signing key
  data, status_code, headers = api_instance.get_url_signing_key_with_http_info(signing_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SigningKeyResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling URLSigningKeysApi->get_url_signing_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signing_key_id** | **String** | The ID of the signing key. |  |

### Return type

[**SigningKeyResponse**](SigningKeyResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_url_signing_keys

> <ListSigningKeysResponse> list_url_signing_keys(opts)

List URL signing keys

Returns a list of URL signing keys.

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

api_instance = MuxRuby::URLSigningKeysApi.new
opts = {
  limit: 56, # Integer | Number of items to include in the response
  page: 56 # Integer | Offset by this many pages, of the size of `limit`
}

begin
  # List URL signing keys
  result = api_instance.list_url_signing_keys(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling URLSigningKeysApi->list_url_signing_keys: #{e}"
end
```

#### Using the list_url_signing_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSigningKeysResponse>, Integer, Hash)> list_url_signing_keys_with_http_info(opts)

```ruby
begin
  # List URL signing keys
  data, status_code, headers = api_instance.list_url_signing_keys_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSigningKeysResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling URLSigningKeysApi->list_url_signing_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 25] |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |

### Return type

[**ListSigningKeysResponse**](ListSigningKeysResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

