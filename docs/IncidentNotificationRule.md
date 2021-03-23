# MuxRuby::IncidentNotificationRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **rules** | [**Array&lt;NotificationRule&gt;**](NotificationRule.md) |  | [optional] |
| **property_id** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **action** | **String** |  | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::IncidentNotificationRule.new(
  status: null,
  rules: null,
  property_id: null,
  id: null,
  action: null
)
```

