# MuxRuby::PlaybackRestrictionsApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_playback_restriction**](PlaybackRestrictionsApi.md#create_playback_restriction) | **POST** /video/v1/playback-restrictions | Create a Playback Restriction |
| [**delete_playback_restriction**](PlaybackRestrictionsApi.md#delete_playback_restriction) | **DELETE** /video/v1/playback-restrictions/{PLAYBACK_RESTRICTION_ID} | Delete a Playback Restriction |
| [**get_playback_restriction**](PlaybackRestrictionsApi.md#get_playback_restriction) | **GET** /video/v1/playback-restrictions/{PLAYBACK_RESTRICTION_ID} | Retrieve a Playback Restriction |
| [**list_playback_restrictions**](PlaybackRestrictionsApi.md#list_playback_restrictions) | **GET** /video/v1/playback-restrictions | List Playback Restrictions |
| [**update_referrer_domain_restriction**](PlaybackRestrictionsApi.md#update_referrer_domain_restriction) | **PUT** /video/v1/playback-restrictions/{PLAYBACK_RESTRICTION_ID}/referrer | Update the Referrer Playback Restriction |


## create_playback_restriction

> <PlaybackRestriction> create_playback_restriction(create_playback_restriction_request)

Create a Playback Restriction

Create a new Playback Restriction.

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

api_instance = MuxRuby::PlaybackRestrictionsApi.new
create_playback_restriction_request = MuxRuby::CreatePlaybackRestrictionRequest.new # CreatePlaybackRestrictionRequest | 

begin
  # Create a Playback Restriction
  result = api_instance.create_playback_restriction(create_playback_restriction_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackRestrictionsApi->create_playback_restriction: #{e}"
end
```

#### Using the create_playback_restriction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlaybackRestriction>, Integer, Hash)> create_playback_restriction_with_http_info(create_playback_restriction_request)

```ruby
begin
  # Create a Playback Restriction
  data, status_code, headers = api_instance.create_playback_restriction_with_http_info(create_playback_restriction_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlaybackRestriction>
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackRestrictionsApi->create_playback_restriction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_playback_restriction_request** | [**CreatePlaybackRestrictionRequest**](CreatePlaybackRestrictionRequest.md) |  |  |

### Return type

[**PlaybackRestriction**](PlaybackRestriction.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_playback_restriction

> delete_playback_restriction(playback_restriction_id)

Delete a Playback Restriction

Deletes a single Playback Restriction.

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

api_instance = MuxRuby::PlaybackRestrictionsApi.new
playback_restriction_id = 'playback_restriction_id_example' # String | ID of the Playback Restriction.

begin
  # Delete a Playback Restriction
  api_instance.delete_playback_restriction(playback_restriction_id)
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackRestrictionsApi->delete_playback_restriction: #{e}"
end
```

#### Using the delete_playback_restriction_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_playback_restriction_with_http_info(playback_restriction_id)

```ruby
begin
  # Delete a Playback Restriction
  data, status_code, headers = api_instance.delete_playback_restriction_with_http_info(playback_restriction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackRestrictionsApi->delete_playback_restriction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **playback_restriction_id** | **String** | ID of the Playback Restriction. |  |

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_playback_restriction

> <PlaybackRestriction> get_playback_restriction(playback_restriction_id)

Retrieve a Playback Restriction

Retrieves a Playback Restriction associated with the unique identifier.

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

api_instance = MuxRuby::PlaybackRestrictionsApi.new
playback_restriction_id = 'playback_restriction_id_example' # String | ID of the Playback Restriction.

begin
  # Retrieve a Playback Restriction
  result = api_instance.get_playback_restriction(playback_restriction_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackRestrictionsApi->get_playback_restriction: #{e}"
end
```

#### Using the get_playback_restriction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlaybackRestriction>, Integer, Hash)> get_playback_restriction_with_http_info(playback_restriction_id)

```ruby
begin
  # Retrieve a Playback Restriction
  data, status_code, headers = api_instance.get_playback_restriction_with_http_info(playback_restriction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlaybackRestriction>
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackRestrictionsApi->get_playback_restriction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **playback_restriction_id** | **String** | ID of the Playback Restriction. |  |

### Return type

[**PlaybackRestriction**](PlaybackRestriction.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_playback_restrictions

> <Array<PlaybackRestriction>> list_playback_restrictions(opts)

List Playback Restrictions

Returns a list of all Playback Restrictions.

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

api_instance = MuxRuby::PlaybackRestrictionsApi.new
opts = {
  page: 56, # Integer | Offset by this many pages, of the size of `limit`
  limit: 56 # Integer | Number of items to include in the response
}

begin
  # List Playback Restrictions
  result = api_instance.list_playback_restrictions(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackRestrictionsApi->list_playback_restrictions: #{e}"
end
```

#### Using the list_playback_restrictions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PlaybackRestriction>>, Integer, Hash)> list_playback_restrictions_with_http_info(opts)

```ruby
begin
  # List Playback Restrictions
  data, status_code, headers = api_instance.list_playback_restrictions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PlaybackRestriction>>
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackRestrictionsApi->list_playback_restrictions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 25] |

### Return type

[**Array&lt;PlaybackRestriction&gt;**](PlaybackRestriction.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_referrer_domain_restriction

> <PlaybackRestriction> update_referrer_domain_restriction(playback_restriction_id, body)

Update the Referrer Playback Restriction

Allows you to modify the list of domians or change how Mux validates playback requests without the `Referer` HTTP header. The Referrer restriction fully replaces the old list with this new list of domains.

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

api_instance = MuxRuby::PlaybackRestrictionsApi.new
playback_restriction_id = 'playback_restriction_id_example' # String | ID of the Playback Restriction.
body = {"allowed_domains":["*.example.com"],"allow_no_referrer":true} # ReferrerDomainRestriction | 

begin
  # Update the Referrer Playback Restriction
  result = api_instance.update_referrer_domain_restriction(playback_restriction_id, body)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackRestrictionsApi->update_referrer_domain_restriction: #{e}"
end
```

#### Using the update_referrer_domain_restriction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlaybackRestriction>, Integer, Hash)> update_referrer_domain_restriction_with_http_info(playback_restriction_id, body)

```ruby
begin
  # Update the Referrer Playback Restriction
  data, status_code, headers = api_instance.update_referrer_domain_restriction_with_http_info(playback_restriction_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlaybackRestriction>
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackRestrictionsApi->update_referrer_domain_restriction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **playback_restriction_id** | **String** | ID of the Playback Restriction. |  |
| **body** | **ReferrerDomainRestriction** |  |  |

### Return type

[**PlaybackRestriction**](PlaybackRestriction.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

