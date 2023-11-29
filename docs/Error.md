# MuxRuby::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | A unique identifier for this error. | [optional] |
| **percentage** | **Float** | The percentage of views that experienced this error. | [optional] |
| **notes** | **String** | Notes that are attached to this error. | [optional] |
| **message** | **String** | The error message. | [optional] |
| **last_seen** | **String** | The last time this error was seen (ISO 8601 timestamp). | [optional] |
| **description** | **String** | Description of the error. | [optional] |
| **count** | **Integer** | The total number of views that experienced this error. | [optional] |
| **code** | **Integer** | The error code | [optional] |

## Example

```ruby
require 'mux_ruby'

instance = MuxRuby::Error.new(
  id: null,
  percentage: null,
  notes: null,
  message: null,
  last_seen: null,
  description: null,
  count: null,
  code: null
)
```

