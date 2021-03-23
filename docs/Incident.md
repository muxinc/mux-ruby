# MuxRuby::Incident

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **threshold** | **Float** |  | [optional] |
| **status** | **String** |  | [optional] |
| **started_at** | **String** |  | [optional] |
| **severity** | **String** |  | [optional] |
| **sample_size_unit** | **String** |  | [optional] |
| **sample_size** | **Integer** |  | [optional] |
| **resolved_at** | **String** |  | [optional] |
| **notifications** | [**Array&lt;IncidentNotification&gt;**](IncidentNotification.md) |  | [optional] |
| **notification_rules** | [**Array&lt;IncidentNotificationRule&gt;**](IncidentNotificationRule.md) |  | [optional] |
| **measurement** | **String** |  | [optional] |
| **measured_value_on_close** | **Float** |  | [optional] |
| **measured_value** | **Float** |  | [optional] |
| **incident_key** | **String** |  | [optional] |
| **impact** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **error_description** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **breakdowns** | [**Array&lt;IncidentBreakdown&gt;**](IncidentBreakdown.md) |  | [optional] |
| **affected_views_per_hour_on_open** | **Integer** |  | [optional] |
| **affected_views_per_hour** | **Integer** |  | [optional] |
| **affected_views** | **Integer** |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::Incident.new(
  threshold: null,
  status: null,
  started_at: null,
  severity: null,
  sample_size_unit: null,
  sample_size: null,
  resolved_at: null,
  notifications: null,
  notification_rules: null,
  measurement: null,
  measured_value_on_close: null,
  measured_value: null,
  incident_key: null,
  impact: null,
  id: null,
  error_description: null,
  description: null,
  breakdowns: null,
  affected_views_per_hour_on_open: null,
  affected_views_per_hour: null,
  affected_views: null
)
```

