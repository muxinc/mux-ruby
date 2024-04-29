# MuxRuby::PlaybackRestrictionsApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_playback_restriction**](PlaybackRestrictionsApi.md#create_playback_restriction) | **POST** /video/v1/playback-restrictions | Create a Playback Restriction |
| [**delete_playback_restriction**](PlaybackRestrictionsApi.md#delete_playback_restriction) | **DELETE** /video/v1/playback-restrictions/{PLAYBACK_RESTRICTION_ID} | Delete a Playback Restriction |
| [**get_playback_restriction**](PlaybackRestrictionsApi.md#get_playback_restriction) | **GET** /video/v1/playback-restrictions/{PLAYBACK_RESTRICTION_ID} | Retrieve a Playback Restriction |
| [**list_playback_restrictions**](PlaybackRestrictionsApi.md#list_playback_restrictions) | **GET** /video/v1/playback-restrictions | List Playback Restrictions |
| [**update_referrer_domain_restriction**](PlaybackRestrictionsApi.md#update_referrer_domain_restriction) | **PUT** /video/v1/playback-restrictions/{PLAYBACK_RESTRICTION_ID}/referrer | Update the Referrer Playback Restriction |
| [**update_user_agent_restriction**](PlaybackRestrictionsApi.md#update_user_agent_restriction) | **PUT** /video/v1/playback-restrictions/{PLAYBACK_RESTRICTION_ID}/user_agent | Update the User Agent Restriction |


## create_playback_restriction

> <PlaybackRestrictionResponse> create_playback_restriction(create_playback_restriction_request)

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

> <Array(<PlaybackRestrictionResponse>, Integer, Hash)> create_playback_restriction_with_http_info(create_playback_restriction_request)

```ruby
begin
  # Create a Playback Restriction
  data, status_code, headers = api_instance.create_playback_restriction_with_http_info(create_playback_restriction_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlaybackRestrictionResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackRestrictionsApi->create_playback_restriction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_playback_restriction_request** | [**CreatePlaybackRestrictionRequest**](CreatePlaybackRestrictionRequest.md) |  |  |

### Return type

[**PlaybackRestrictionResponse**](PlaybackRestrictionResponse.md)

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

> <PlaybackRestrictionResponse> get_playback_restriction(playback_restriction_id)

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

> <Array(<PlaybackRestrictionResponse>, Integer, Hash)> get_playback_restriction_with_http_info(playback_restriction_id)

```ruby
begin
  # Retrieve a Playback Restriction
  data, status_code, headers = api_instance.get_playback_restriction_with_http_info(playback_restriction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlaybackRestrictionResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackRestrictionsApi->get_playback_restriction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **playback_restriction_id** | **String** | ID of the Playback Restriction. |  |

### Return type

[**PlaybackRestrictionResponse**](PlaybackRestrictionResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_playback_restrictions

> <ListPlaybackRestrictionsResponse> list_playback_restrictions(opts)

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

> <Array(<ListPlaybackRestrictionsResponse>, Integer, Hash)> list_playback_restrictions_with_http_info(opts)

```ruby
begin
  # List Playback Restrictions
  data, status_code, headers = api_instance.list_playback_restrictions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPlaybackRestrictionsResponse>
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

[**ListPlaybackRestrictionsResponse**](ListPlaybackRestrictionsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_referrer_domain_restriction

> <PlaybackRestrictionResponse> update_referrer_domain_restriction(playback_restriction_id, update_referrer_domain_restriction_request)

Update the Referrer Playback Restriction

Allows you to modify the list of domains or change how Mux validates playback requests without the `Referer` HTTP header. The Referrer restriction fully replaces the old list with this new list of domains.

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
update_referrer_domain_restriction_request = MuxRuby::ReferrerDomainRestriction.new # UpdateReferrerDomainRestrictionRequest | 

begin
  # Update the Referrer Playback Restriction
  result = api_instance.update_referrer_domain_restriction(playback_restriction_id, update_referrer_domain_restriction_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackRestrictionsApi->update_referrer_domain_restriction: #{e}"
end
```

#### Using the update_referrer_domain_restriction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlaybackRestrictionResponse>, Integer, Hash)> update_referrer_domain_restriction_with_http_info(playback_restriction_id, update_referrer_domain_restriction_request)

```ruby
begin
  # Update the Referrer Playback Restriction
  data, status_code, headers = api_instance.update_referrer_domain_restriction_with_http_info(playback_restriction_id, update_referrer_domain_restriction_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlaybackRestrictionResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackRestrictionsApi->update_referrer_domain_restriction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **playback_restriction_id** | **String** | ID of the Playback Restriction. |  |
| **update_referrer_domain_restriction_request** | [**UpdateReferrerDomainRestrictionRequest**](UpdateReferrerDomainRestrictionRequest.md) |  |  |

### Return type

[**PlaybackRestrictionResponse**](PlaybackRestrictionResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user_agent_restriction

> <PlaybackRestrictionResponse> update_user_agent_restriction(playback_restriction_id, update_user_agent_restriction_request)

Update the User Agent Restriction

Allows you to modify how Mux validates playback requests with different user agents.  Please see [Using User-Agent HTTP header for validation](https://docs.mux.com/guides/secure-video-playback#using-user-agent-http-header-for-validation) for more details on this feature.

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
update_user_agent_restriction_request = MuxRuby::UpdateUserAgentRestrictionRequest.new # UpdateUserAgentRestrictionRequest | 

begin
  # Update the User Agent Restriction
  result = api_instance.update_user_agent_restriction(playback_restriction_id, update_user_agent_restriction_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackRestrictionsApi->update_user_agent_restriction: #{e}"
end
```

#### Using the update_user_agent_restriction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlaybackRestrictionResponse>, Integer, Hash)> update_user_agent_restriction_with_http_info(playback_restriction_id, update_user_agent_restriction_request)

```ruby
begin
  # Update the User Agent Restriction
  data, status_code, headers = api_instance.update_user_agent_restriction_with_http_info(playback_restriction_id, update_user_agent_restriction_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlaybackRestrictionResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling PlaybackRestrictionsApi->update_user_agent_restriction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **playback_restriction_id** | **String** | ID of the Playback Restriction. |  |
| **update_user_agent_restriction_request** | [**UpdateUserAgentRestrictionRequest**](UpdateUserAgentRestrictionRequest.md) |  |  |

### Return type

[**PlaybackRestrictionResponse**](PlaybackRestrictionResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

