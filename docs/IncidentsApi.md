# MuxRuby::IncidentsApi

All URIs are relative to *https://api.mux.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_incident**](IncidentsApi.md#get_incident) | **GET** /data/v1/incidents/{INCIDENT_ID} | Get an Incident
[**list_incidents**](IncidentsApi.md#list_incidents) | **GET** /data/v1/incidents | List Incidents
[**list_related_incidents**](IncidentsApi.md#list_related_incidents) | **GET** /data/v1/incidents/{INCIDENT_ID}/related | List Related Incidents


# **get_incident**
> IncidentResponse get_incident(incident_id)

Get an Incident

Returns the details of an incident 

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

api_instance = MuxRuby::IncidentsApi.new
incident_id = 'abcd1234' # String | ID of the Incident

begin
  #Get an Incident
  result = api_instance.get_incident(incident_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling IncidentsApi->get_incident: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incident_id** | **String**| ID of the Incident | 

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_incidents**
> ListIncidentsResponse list_incidents(opts)

List Incidents

Returns a list of incidents 

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

api_instance = MuxRuby::IncidentsApi.new
opts = {
  limit: 25, # Integer | Number of items to include in the response
  page: 1, # Integer | Offset by this many pages, of the size of `limit`
  order_by: 'order_by_example', # String | Value to order the results by
  order_direction: 'order_direction_example', # String | Sort order.
  status: 'status_example', # String | Status to filter incidents by
  severity: 'severity_example' # String | Severity to filter incidents by
}

begin
  #List Incidents
  result = api_instance.list_incidents(opts)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling IncidentsApi->list_incidents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of items to include in the response | [optional] [default to 25]
 **page** | **Integer**| Offset by this many pages, of the size of &#x60;limit&#x60; | [optional] [default to 1]
 **order_by** | **String**| Value to order the results by | [optional] 
 **order_direction** | **String**| Sort order. | [optional] 
 **status** | **String**| Status to filter incidents by | [optional] 
 **severity** | **String**| Severity to filter incidents by | [optional] 

### Return type

[**ListIncidentsResponse**](ListIncidentsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_related_incidents**
> ListRelatedIncidentsResponse list_related_incidents(incident_id)

List Related Incidents

Returns all the incidents that seem related to a specific incident 

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

api_instance = MuxRuby::IncidentsApi.new
incident_id = 'abcd1234' # String | ID of the Incident

begin
  #List Related Incidents
  result = api_instance.list_related_incidents(incident_id)
  p result
rescue MuxRuby::ApiError => e
  puts "Exception when calling IncidentsApi->list_related_incidents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incident_id** | **String**| ID of the Incident | 

### Return type

[**ListRelatedIncidentsResponse**](ListRelatedIncidentsResponse.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



