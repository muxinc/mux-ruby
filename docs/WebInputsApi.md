# MuxRuby::WebInputsApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_web_input**](WebInputsApi.md#create_web_input) | **POST** /video/v1/web-inputs | Create a new Web Input |
| [**delete_web_input**](WebInputsApi.md#delete_web_input) | **DELETE** /video/v1/web-inputs/{WEB_INPUT_ID} | Delete a Web Input |
| [**get_web_input**](WebInputsApi.md#get_web_input) | **GET** /video/v1/web-inputs/{WEB_INPUT_ID} | Retrieve a Web Input |
| [**launch_web_input**](WebInputsApi.md#launch_web_input) | **PUT** /video/v1/web-inputs/{WEB_INPUT_ID}/launch | Launch a Web Input |
| [**list_web_inputs**](WebInputsApi.md#list_web_inputs) | **GET** /video/v1/web-inputs | List Web Inputs |
| [**reload_web_input**](WebInputsApi.md#reload_web_input) | **PUT** /video/v1/web-inputs/{WEB_INPUT_ID}/reload | Reload a Web Input |
| [**shutdown_web_input**](WebInputsApi.md#shutdown_web_input) | **PUT** /video/v1/web-inputs/{WEB_INPUT_ID}/shutdown | Shut down a Web Input |
| [**update_web_input_url**](WebInputsApi.md#update_web_input_url) | **PUT** /video/v1/web-inputs/{WEB_INPUT_ID}/url | Update Web Input URL |


## create_web_input

> <WebInputResponse> create_web_input(create_web_input_request)

Create a new Web Input

Create a new Web Input

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

api_instance = MuxRuby::WebInputsApi.new
create_web_input_request = MuxRuby::CreateWebInputRequest.new # CreateWebInputRequest | 

begin
  # Create a new Web Input
  result = api_instance.create_web_input(create_web_input_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling WebInputsApi->create_web_input: #{e}"
end
```

#### Using the create_web_input_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebInputResponse>, Integer, Hash)> create_web_input_with_http_info(create_web_input_request)

```ruby
begin
  # Create a new Web Input
  data, status_code, headers = api_instance.create_web_input_with_http_info(create_web_input_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebInputResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling WebInputsApi->create_web_input_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_web_input_request** | [**CreateWebInputRequest**](CreateWebInputRequest.md) |  |  |

### Return type

[**WebInputResponse**](WebInputResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_web_input

> delete_web_input(web_input_id)

Delete a Web Input

Deletes a Web Input and all its data

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

api_instance = MuxRuby::WebInputsApi.new
web_input_id = 'abcd1234' # String | The Web Input ID

begin
  # Delete a Web Input
  api_instance.delete_web_input(web_input_id)
rescue MuxRuby::ApiError => e
  puts "Error when calling WebInputsApi->delete_web_input: #{e}"
end
```

#### Using the delete_web_input_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_web_input_with_http_info(web_input_id)

```ruby
begin
  # Delete a Web Input
  data, status_code, headers = api_instance.delete_web_input_with_http_info(web_input_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MuxRuby::ApiError => e
  puts "Error when calling WebInputsApi->delete_web_input_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_input_id** | **String** | The Web Input ID |  |

### Return type

nil (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_web_input

> <WebInputResponse> get_web_input(web_input_id)

Retrieve a Web Input

Retrieve a single Web Input's info

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

api_instance = MuxRuby::WebInputsApi.new
web_input_id = 'abcd1234' # String | The Web Input ID

begin
  # Retrieve a Web Input
  result = api_instance.get_web_input(web_input_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling WebInputsApi->get_web_input: #{e}"
end
```

#### Using the get_web_input_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebInputResponse>, Integer, Hash)> get_web_input_with_http_info(web_input_id)

```ruby
begin
  # Retrieve a Web Input
  data, status_code, headers = api_instance.get_web_input_with_http_info(web_input_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebInputResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling WebInputsApi->get_web_input_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_input_id** | **String** | The Web Input ID |  |

### Return type

[**WebInputResponse**](WebInputResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## launch_web_input

> <LaunchWebInputResponse> launch_web_input(web_input_id)

Launch a Web Input

Launches the browsers instance, loads the URL specified, and then starts streaming to the specified Live Stream.

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

api_instance = MuxRuby::WebInputsApi.new
web_input_id = 'abcd1234' # String | The Web Input ID

begin
  # Launch a Web Input
  result = api_instance.launch_web_input(web_input_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling WebInputsApi->launch_web_input: #{e}"
end
```

#### Using the launch_web_input_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LaunchWebInputResponse>, Integer, Hash)> launch_web_input_with_http_info(web_input_id)

```ruby
begin
  # Launch a Web Input
  data, status_code, headers = api_instance.launch_web_input_with_http_info(web_input_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LaunchWebInputResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling WebInputsApi->launch_web_input_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_input_id** | **String** | The Web Input ID |  |

### Return type

[**LaunchWebInputResponse**](LaunchWebInputResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_web_inputs

> <ListWebInputsResponse> list_web_inputs(opts)

List Web Inputs

List Web Inputs

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

api_instance = MuxRuby::WebInputsApi.new
opts = {
  limit: 56, # Integer | Number of items to include in the response
  page: 56 # Integer | Offset by this many pages, of the size of `limit`
}

begin
  # List Web Inputs
  result = api_instance.list_web_inputs(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling WebInputsApi->list_web_inputs: #{e}"
end
```

#### Using the list_web_inputs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWebInputsResponse>, Integer, Hash)> list_web_inputs_with_http_info(opts)

```ruby
begin
  # List Web Inputs
  data, status_code, headers = api_instance.list_web_inputs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWebInputsResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling WebInputsApi->list_web_inputs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 25] |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |

### Return type

[**ListWebInputsResponse**](ListWebInputsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reload_web_input

> <ReloadWebInputResponse> reload_web_input(web_input_id)

Reload a Web Input

Reloads the page that a Web Input is displaying.  Note: Using this when the Web Input is streaming will display the page reloading. 

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

api_instance = MuxRuby::WebInputsApi.new
web_input_id = 'abcd1234' # String | The Web Input ID

begin
  # Reload a Web Input
  result = api_instance.reload_web_input(web_input_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling WebInputsApi->reload_web_input: #{e}"
end
```

#### Using the reload_web_input_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReloadWebInputResponse>, Integer, Hash)> reload_web_input_with_http_info(web_input_id)

```ruby
begin
  # Reload a Web Input
  data, status_code, headers = api_instance.reload_web_input_with_http_info(web_input_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReloadWebInputResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling WebInputsApi->reload_web_input_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_input_id** | **String** | The Web Input ID |  |

### Return type

[**ReloadWebInputResponse**](ReloadWebInputResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## shutdown_web_input

> <ShutdownWebInputResponse> shutdown_web_input(web_input_id)

Shut down a Web Input

Ends streaming to the specified Live Stream, and then shuts down the Web Input browser instance.

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

api_instance = MuxRuby::WebInputsApi.new
web_input_id = 'abcd1234' # String | The Web Input ID

begin
  # Shut down a Web Input
  result = api_instance.shutdown_web_input(web_input_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling WebInputsApi->shutdown_web_input: #{e}"
end
```

#### Using the shutdown_web_input_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShutdownWebInputResponse>, Integer, Hash)> shutdown_web_input_with_http_info(web_input_id)

```ruby
begin
  # Shut down a Web Input
  data, status_code, headers = api_instance.shutdown_web_input_with_http_info(web_input_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShutdownWebInputResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling WebInputsApi->shutdown_web_input_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_input_id** | **String** | The Web Input ID |  |

### Return type

[**ShutdownWebInputResponse**](ShutdownWebInputResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_web_input_url

> <WebInputResponse> update_web_input_url(web_input_id, update_web_input_url_request)

Update Web Input URL

Changes the URL that a Web Input loads when it launches.  Note: This can only be called when the Web Input is idle. 

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

api_instance = MuxRuby::WebInputsApi.new
web_input_id = 'abcd1234' # String | The Web Input ID
update_web_input_url_request = MuxRuby::UpdateWebInputUrlRequest.new # UpdateWebInputUrlRequest | 

begin
  # Update Web Input URL
  result = api_instance.update_web_input_url(web_input_id, update_web_input_url_request)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling WebInputsApi->update_web_input_url: #{e}"
end
```

#### Using the update_web_input_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebInputResponse>, Integer, Hash)> update_web_input_url_with_http_info(web_input_id, update_web_input_url_request)

```ruby
begin
  # Update Web Input URL
  data, status_code, headers = api_instance.update_web_input_url_with_http_info(web_input_id, update_web_input_url_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebInputResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling WebInputsApi->update_web_input_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_input_id** | **String** | The Web Input ID |  |
| **update_web_input_url_request** | [**UpdateWebInputUrlRequest**](UpdateWebInputUrlRequest.md) |  |  |

### Return type

[**WebInputResponse**](WebInputResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

