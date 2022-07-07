# MuxRuby::TranscriptionVocabulariesApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_transcription_vocabulary**](TranscriptionVocabulariesApi.md#create_transcription_vocabulary) | **POST** /video/v1/transcription-vocabularies | Create a Transcription Vocabulary |
| [**delete_transcription_vocabulary**](TranscriptionVocabulariesApi.md#delete_transcription_vocabulary) | **DELETE** /video/v1/transcription-vocabularies/{TRANSCRIPTION_VOCABULARY_ID} | Delete a Transcription Vocabulary |
| [**get_transcription_vocabulary**](TranscriptionVocabulariesApi.md#get_transcription_vocabulary) | **GET** /video/v1/transcription-vocabularies/{TRANSCRIPTION_VOCABULARY_ID} | Retrieve a Transcription Vocabulary |
| [**list_transcription_vocabularies**](TranscriptionVocabulariesApi.md#list_transcription_vocabularies) | **GET** /video/v1/transcription-vocabularies | List Transcription Vocabularies |
| [**update_transcription_vocabulary**](TranscriptionVocabulariesApi.md#update_transcription_vocabulary) | **PUT** /video/v1/transcription-vocabularies/{TRANSCRIPTION_VOCABULARY_ID} | Update a Transcription Vocabulary |


## create_transcription_vocabulary

> <TranscriptionVocabularyResponse> create_transcription_vocabulary(create_transcription_vocabulary_request)

Create a Transcription Vocabulary

Create a new Transcription Vocabulary.

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

api_instance = MuxRuby::TranscriptionVocabulariesApi.new
create_transcription_vocabulary_request = MuxRuby::CreateTranscriptionVocabularyRequest.new({phrases: ['phrases_example']}) # CreateTranscriptionVocabularyRequest | 

begin
  # Create a Transcription Vocabulary
  result = api_instance.create_transcription_vocabulary(create_transcription_vocabulary_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling TranscriptionVocabulariesApi->create_transcription_vocabulary: #{e}"
end
```

#### Using the create_transcription_vocabulary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TranscriptionVocabularyResponse>, Integer, Hash)> create_transcription_vocabulary_with_http_info(create_transcription_vocabulary_request)

```ruby
begin
  # Create a Transcription Vocabulary
  data, status_code, headers = api_instance.create_transcription_vocabulary_with_http_info(create_transcription_vocabulary_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TranscriptionVocabularyResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling TranscriptionVocabulariesApi->create_transcription_vocabulary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_transcription_vocabulary_request** | [**CreateTranscriptionVocabularyRequest**](CreateTranscriptionVocabularyRequest.md) |  |  |

### Return type

[**TranscriptionVocabularyResponse**](TranscriptionVocabularyResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_transcription_vocabulary

> delete_transcription_vocabulary(transcription_vocabulary_id)

Delete a Transcription Vocabulary

Deletes a Transcription Vocabulary. The Transcription Vocabulary's ID will be disassociated from any live streams using it. Transcription Vocabularies can be deleted while associated live streams are active. However, the words and phrases in the deleted Transcription Vocabulary will remain attached to those streams while they are active.

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

api_instance = MuxRuby::TranscriptionVocabulariesApi.new
transcription_vocabulary_id = 'transcription_vocabulary_id_example' # String | The ID of the Transcription Vocabulary.

begin
  # Delete a Transcription Vocabulary
  api_instance.delete_transcription_vocabulary(transcription_vocabulary_id)
rescue MuxRuby::ApiError => e
  puts "Error when calling TranscriptionVocabulariesApi->delete_transcription_vocabulary: #{e}"
end
```

#### Using the delete_transcription_vocabulary_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_transcription_vocabulary_with_http_info(transcription_vocabulary_id)

```ruby
begin
  # Delete a Transcription Vocabulary
  data, status_code, headers = api_instance.delete_transcription_vocabulary_with_http_info(transcription_vocabulary_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MuxRuby::ApiError => e
  puts "Error when calling TranscriptionVocabulariesApi->delete_transcription_vocabulary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transcription_vocabulary_id** | **String** | The ID of the Transcription Vocabulary. |  |

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_transcription_vocabulary

> <TranscriptionVocabularyResponse> get_transcription_vocabulary(transcription_vocabulary_id)

Retrieve a Transcription Vocabulary

Retrieves the details of a Transcription Vocabulary that has previously been created. Supply the unique Transcription Vocabulary ID and Mux will return the corresponding Transcription Vocabulary information. The same information is returned when creating a Transcription Vocabulary.

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

api_instance = MuxRuby::TranscriptionVocabulariesApi.new
transcription_vocabulary_id = 'transcription_vocabulary_id_example' # String | The ID of the Transcription Vocabulary.

begin
  # Retrieve a Transcription Vocabulary
  result = api_instance.get_transcription_vocabulary(transcription_vocabulary_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling TranscriptionVocabulariesApi->get_transcription_vocabulary: #{e}"
end
```

#### Using the get_transcription_vocabulary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TranscriptionVocabularyResponse>, Integer, Hash)> get_transcription_vocabulary_with_http_info(transcription_vocabulary_id)

```ruby
begin
  # Retrieve a Transcription Vocabulary
  data, status_code, headers = api_instance.get_transcription_vocabulary_with_http_info(transcription_vocabulary_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TranscriptionVocabularyResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling TranscriptionVocabulariesApi->get_transcription_vocabulary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transcription_vocabulary_id** | **String** | The ID of the Transcription Vocabulary. |  |

### Return type

[**TranscriptionVocabularyResponse**](TranscriptionVocabularyResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_transcription_vocabularies

> <ListTranscriptionVocabulariesResponse> list_transcription_vocabularies(opts)

List Transcription Vocabularies

List all Transcription Vocabularies.

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

api_instance = MuxRuby::TranscriptionVocabulariesApi.new
opts = {
  limit: 56, # Integer | Number of items to include in the response
  page: 56 # Integer | Offset by this many pages, of the size of `limit`
}

begin
  # List Transcription Vocabularies
  result = api_instance.list_transcription_vocabularies(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling TranscriptionVocabulariesApi->list_transcription_vocabularies: #{e}"
end
```

#### Using the list_transcription_vocabularies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTranscriptionVocabulariesResponse>, Integer, Hash)> list_transcription_vocabularies_with_http_info(opts)

```ruby
begin
  # List Transcription Vocabularies
  data, status_code, headers = api_instance.list_transcription_vocabularies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTranscriptionVocabulariesResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling TranscriptionVocabulariesApi->list_transcription_vocabularies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 10] |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |

### Return type

[**ListTranscriptionVocabulariesResponse**](ListTranscriptionVocabulariesResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_transcription_vocabulary

> <TranscriptionVocabularyResponse> update_transcription_vocabulary(transcription_vocabulary_id, update_transcription_vocabulary_request)

Update a Transcription Vocabulary

Updates the details of a previously-created Transcription Vocabulary. Updates to Transcription Vocabularies are allowed while associated live streams are active. However, updates will not be applied to those streams while they are active.

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

api_instance = MuxRuby::TranscriptionVocabulariesApi.new
transcription_vocabulary_id = 'transcription_vocabulary_id_example' # String | The ID of the Transcription Vocabulary.
update_transcription_vocabulary_request = MuxRuby::UpdateTranscriptionVocabularyRequest.new({phrases: ['phrases_example']}) # UpdateTranscriptionVocabularyRequest | 

begin
  # Update a Transcription Vocabulary
  result = api_instance.update_transcription_vocabulary(transcription_vocabulary_id, update_transcription_vocabulary_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling TranscriptionVocabulariesApi->update_transcription_vocabulary: #{e}"
end
```

#### Using the update_transcription_vocabulary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TranscriptionVocabularyResponse>, Integer, Hash)> update_transcription_vocabulary_with_http_info(transcription_vocabulary_id, update_transcription_vocabulary_request)

```ruby
begin
  # Update a Transcription Vocabulary
  data, status_code, headers = api_instance.update_transcription_vocabulary_with_http_info(transcription_vocabulary_id, update_transcription_vocabulary_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TranscriptionVocabularyResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling TranscriptionVocabulariesApi->update_transcription_vocabulary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transcription_vocabulary_id** | **String** | The ID of the Transcription Vocabulary. |  |
| **update_transcription_vocabulary_request** | [**UpdateTranscriptionVocabularyRequest**](UpdateTranscriptionVocabularyRequest.md) |  |  |

### Return type

[**TranscriptionVocabularyResponse**](TranscriptionVocabularyResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

