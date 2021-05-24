# MuxRuby::IncidentsApi

All URIs are relative to *https://api.mux.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_incident**](IncidentsApi.md#get_incident) | **GET** /data/v1/incidents/{INCIDENT_ID} | Get an Incident |
| [**list_incidents**](IncidentsApi.md#list_incidents) | **GET** /data/v1/incidents | List Incidents |
| [**list_related_incidents**](IncidentsApi.md#list_related_incidents) | **GET** /data/v1/incidents/{INCIDENT_ID}/related | List Related Incidents |


## get_incident

> <IncidentResponse> get_incident(incident_id)

Get an Incident

Returns the details of an incident 

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

api_instance = MuxRuby::IncidentsApi.new
incident_id = 'abcd1234' # String | ID of the Incident

begin
  # Get an Incident
  result = api_instance.get_incident(incident_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling IncidentsApi->get_incident: #{e}"
end
```

#### Using the get_incident_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentResponse>, Integer, Hash)> get_incident_with_http_info(incident_id)

```ruby
begin
  # Get an Incident
  data, status_code, headers = api_instance.get_incident_with_http_info(incident_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling IncidentsApi->get_incident_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_id** | **String** | ID of the Incident |  |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_incidents

> <ListIncidentsResponse> list_incidents(opts)

List Incidents

Returns a list of incidents 

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

api_instance = MuxRuby::IncidentsApi.new
opts = {
  limit: 56, # Integer | Number of items to include in the response
  page: 56, # Integer | Offset by this many pages, of the size of `limit`
  order_by: 'negative_impact', # String | Value to order the results by
  order_direction: 'asc', # String | Sort order.
  status: 'open', # String | Status to filter incidents by
  severity: 'warning' # String | Severity to filter incidents by
}

begin
  # List Incidents
  result = api_instance.list_incidents(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling IncidentsApi->list_incidents: #{e}"
end
```

#### Using the list_incidents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIncidentsResponse>, Integer, Hash)> list_incidents_with_http_info(opts)

```ruby
begin
  # List Incidents
  data, status_code, headers = api_instance.list_incidents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIncidentsResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling IncidentsApi->list_incidents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 25] |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |
| **order_by** | **String** | Value to order the results by | [optional] |
| **order_direction** | **String** | Sort order. | [optional] |
| **status** | **String** | Status to filter incidents by | [optional] |
| **severity** | **String** | Severity to filter incidents by | [optional] |

### Return type

[**ListIncidentsResponse**](ListIncidentsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_related_incidents

> <ListRelatedIncidentsResponse> list_related_incidents(incident_id, opts)

List Related Incidents

Returns all the incidents that seem related to a specific incident 

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

api_instance = MuxRuby::IncidentsApi.new
incident_id = 'abcd1234' # String | ID of the Incident
opts = {
  limit: 56, # Integer | Number of items to include in the response
  page: 56, # Integer | Offset by this many pages, of the size of `limit`
  order_by: 'negative_impact', # String | Value to order the results by
  order_direction: 'asc' # String | Sort order.
}

begin
  # List Related Incidents
  result = api_instance.list_related_incidents(incident_id, opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Error when calling IncidentsApi->list_related_incidents: #{e}"
end
```

#### Using the list_related_incidents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRelatedIncidentsResponse>, Integer, Hash)> list_related_incidents_with_http_info(incident_id, opts)

```ruby
begin
  # List Related Incidents
  data, status_code, headers = api_instance.list_related_incidents_with_http_info(incident_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRelatedIncidentsResponse>
rescue MuxRuby::ApiError => e
  puts "Error when calling IncidentsApi->list_related_incidents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_id** | **String** | ID of the Incident |  |
| **limit** | **Integer** | Number of items to include in the response | [optional][default to 25] |
| **page** | **Integer** | Offset by this many pages, of the size of &#x60;limit&#x60; | [optional][default to 1] |
| **order_by** | **String** | Value to order the results by | [optional] |
| **order_direction** | **String** | Sort order. | [optional] |

### Return type

[**ListRelatedIncidentsResponse**](ListRelatedIncidentsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

